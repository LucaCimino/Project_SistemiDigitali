import tensorflow as tf
from tensorflow.keras import layers, models
import cv2
from keras.preprocessing import image
import numpy as np
import sys



CATEGORIES = ["People", "No people"]


def prepare(filepath):
    IMG_SIZE = 64
    img_array = cv2.imread(filepath)
    new_array = cv2.resize(img_array, (IMG_SIZE, IMG_SIZE))
    return new_array

if len(sys.argv) != 2:
    print("Usage: python3 predict.py PATH_IMMAGINE")
    exit()

path_img = sys.argv[1]

model = models.load_model('model')

# scaliamo i valori
img = prepare(path_img)

x = image.img_to_array(img)
x /= 255 
x = np.expand_dims(x, axis=0)
# appiattiamo l'output
images = np.vstack([x])
  
# eseguiamo la predizione
classes = model.predict(images, batch_size=10)
  
print(classes[0])
  
if classes[0] > 0.5:
    print("People!")
else:
    print("No people!")