import tensorflow as tf
from tensorflow.keras import layers, models
import cv2
from keras.preprocessing import image
import numpy as np
import sys


CATEGORIES = ["People", "No people"]

IMG_SIZE = 64
    
if len(sys.argv) != 2:
    print("Usage: python3 predict.py PATH_IMMAGINE")
    exit()

path_img = sys.argv[1]

model = models.load_model('model')

# Inizializza la telecamera (imposta il parametro 0 se stai usando la webcam integrata)
cap = cv2.VideoCapture(0)

while True:
    # Cattura un frame dalla telecamera
    ret, frame = cap.read()

    # Effettua il resize del frame, se necessario
    # Adatta le dimensioni in base a quelle che il tuo modello richiede
    resized_frame = cv2.resize(frame, (IMG_SIZE, IMG_SIZE))

    # Normalizza i valori dei pixel del frame
    resized_frame = image.img_to_array(resized_frame)
    normalized_frame = resized_frame / 255.0
    resized_frame = np.expand_dims(resized_frame, axis=0)

    images = np.vstack([resized_frame])

    # Esegui la predizione sul frame
    classes = model.predict(images, batch_size=10)

    # Visualizza il frame
    cv2.imshow("Frame", frame)

    print(classes[0])
  
    if classes[0] > 0.5:
       print("People!")
    else:
       print("No people!")

    # Interruzione del loop se viene premuto 'q'
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# Rilascia la telecamera e chiudi la finestra
cap.release()
cv2.destroyAllWindows()
