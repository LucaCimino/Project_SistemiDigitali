import tensorflow as tf
from tensorflow.keras import layers, models
import cv2
from keras.preprocessing import image
import numpy as np
import time


########################
# IMAGE SIZE
WEIGHT = 256
HEIGHT = 256
########################

model = models.load_model('model')

# Inizializza la telecamera (ls -l /dev | grep video)
# 0 per la webcam integrata
# 2 per la webcam esterna
cap = cv2.VideoCapture(2)

counter = 0
frame_counter = 0

while True:
    # Cattura un frame dalla telecamera
    ret, frame = cap.read()

    frame_counter += 1

    if frame_counter == 20:

        # Effettua il resize del frame
        resized_frame = cv2.resize(frame, (WEIGHT, HEIGHT))

        # Normalizza i valori dei pixel del frame
        resized_frame = image.img_to_array(resized_frame)
        normalized_frame = resized_frame / 255.0
        resized_frame = np.expand_dims(resized_frame, axis=0)

        images = np.vstack([resized_frame])

        classes = model.predict(images, batch_size=10)

        # Visualizza il frame
        cv2.imshow("Frame", frame)

        print(classes[0])
    
        if classes[0] > 0.5:
            # PEOPLE
            cv2.imwrite("/tmp/SisDig/people/PEOPLE_" + str(counter) + ".jpg", frame)
        else:
            # NO PEOPLE
            cv2.imwrite("/tmp/SisDig/no_people/NO_PEOPLE_" + str(counter) + ".jpg", frame)

        counter += 1
        frame_counter = 0

    # Interruzione del loop se viene premuto 'q'
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# Rilascia la telecamera e chiudi la finestra
cap.release()
cv2.destroyAllWindows()
