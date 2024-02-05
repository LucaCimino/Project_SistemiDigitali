import cv2
import numpy as np
import sys
import matplotlib.pyplot as plt
import time
from flask import Flask, render_template, Response

def start_recording():
    print('partita la registrazione')
    return

def stop_recording():
    print('stoppata la registrazione')
    return

def record(frame):
    ret, buffer = cv2.imencode('.jpg', frame)
    frame = buffer.tobytes()
    print('sto registrando, prima di yield')
    yield (b'--frame\r\n'
               b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')
    print('sto registrando, dopo yield')
    return


def get_mask(frame1, frame2, kernel=np.array((9,9), dtype=np.uint8)):
    """ Obtains image mask
        Inputs: 
            frame1 - Grayscale frame at time t
            frame2 - Grayscale frame at time t + 1
            kernel - (NxN) array for Morphological Operations
        Outputs: 
            mask - Thresholded mask for moving pixels
        """
    frame_diff = cv2.subtract(frame2, frame1)

    # blur the frame difference
    frame_diff = cv2.medianBlur(frame_diff, 3)
    
    mask = cv2.adaptiveThreshold(frame_diff, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C,\
                cv2.THRESH_BINARY_INV, 11, 3)

    mask = cv2.medianBlur(mask, 3)

    # morphological operations
    mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel, iterations=1)

    num_diff_pixels = np.sum(mask == 255)

    return mask, num_diff_pixels


########################
# IMAGE SIZE
WIGHT = 256
HEIGHT = 256
########################
#camera status
recording=False

threshold_start_reg=5
threshold_stop_reg=5

threshold_start_num_pixel=500
threshold_stop_num_pixel=200
########################
#info video
output_video_path = 'output_video.avi'
fps = 30.0

def test():
    # IMAGE SIZE
    WIGHT = 256
    HEIGHT = 256
    ########################
    #camera status
    recording=False

    threshold_start_reg=5
    threshold_stop_reg=5

    threshold_start_num_pixel=500
    threshold_stop_num_pixel=200
    ########################
    #info video
    output_video_path = 'output_video.avi'
    fps = 30.0

    ########################
    # Inizializza la telecamera (imposta il parametro 0 se stai usando la webcam integrata)
    cap = cv2.VideoCapture(2)

    counter_People = 0
    counter_NoPeople = 0

    # Cattura un frame dalla telecamera
    ret, oldFrame = cap.read()

    # Effettua il resize del frame
    #resized_frame = cv2.resize(oldFrame, (WIGHT, HEIGHT))

    threshold_count=0
    while True:
        # Cattura un frame dalla telecamera
        ret, actualFrame = cap.read()

        # Effettua il resize del frame
        #resized_frame = cv2.resize(actualFrame, (WIGHT, HEIGHT))

        # Visualizza il frame
        cv2.imshow("Frame", actualFrame)

        img1_rgb = cv2.cvtColor(oldFrame, cv2.COLOR_BGR2RGB)
        img2_rgb = cv2.cvtColor(actualFrame, cv2.COLOR_BGR2RGB)

        # convert to grayscale
        img1 = cv2.cvtColor(img1_rgb, cv2.COLOR_RGB2GRAY)
        img2 = cv2.cvtColor(img2_rgb, cv2.COLOR_RGB2GRAY)


        kernel = np.array((9,9), dtype=np.uint8)
        mask, frame_diff = get_mask(img1, img2, kernel)

        cv2.imshow("motion", mask)
        print('il numero di pixel che differiscono è: ',frame_diff, ' su ', np.size(mask))
        print('\n')

        ########################
        # se non sta registrando, dopo 5 volte che sono stati rilevati in una diff 500+ pixel di differenza viene fatta partire la registrazione
        #se sta registrando, quando viene rilevata per 5 volte una diff < 200 stoppa la registrazione
        if(not recording and frame_diff>threshold_start_num_pixel):
            threshold_count+=1
            if(threshold_count>=threshold_start_reg):
                recording= not recording
                threshold_count=0
                print('inizia la registrazione')
                record(actualFrame)
        elif(recording):
            if(frame_diff>threshold_stop_num_pixel):
                threshold_count+=1
                if(threshold_count>=threshold_stop_reg):
                    recording= not recording
                    threshold_count=0
                    print('stoppa la registrazione')
                    record(actualFrame)
            else:
                print('continua la registrazione')
                record(actualFrame)

        time.sleep(0.5)



        # Interruzione del loop se viene premuto 'q'
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

        oldFrame=actualFrame

    # Rilascia la telecamera e chiudi la finestra
    cap.release()
    cv2.destroyAllWindows()
    return


app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/video_feed')
def video_feed():
    return Response(test(), mimetype='multipart/x-mixed-replace; boundary=frame')

if __name__ == "__main__":
    app.run(debug=True)
