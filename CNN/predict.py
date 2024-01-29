import tensorflow as tf
from tensorflow.keras import layers, models
import cv2
from keras.preprocessing import image
import numpy as np
import sys
import time


########################
# IMAGE SIZE
WEIGHT = 256
HEIGHT = 256
########################


if len(sys.argv) != 2:
    print("Usage: python3 predict.py PATH_IMMAGINE")
    exit()

path_img = sys.argv[1]

model = models.load_model('model')

img_array = cv2.imread(path_img)
new_array = cv2.resize(img_array, (WEIGHT, HEIGHT))

# scaliamo i valori
img = image.img_to_array(new_array)
img /= 255 
img = np.expand_dims(img, axis=0)

# appiattiamo l'output
images = np.vstack([img])
  
# eseguiamo la predizione
start = time.time()
predictions = model.predict(images, batch_size=10, verbose=2)
finish = time.time()
print("Prediction time =",finish-start,"s") 

print(predictions[0])

#####################
# classes[0]  =>  % People
# classes[1]  =>  % No People
#####################

if predictions[0] > 0.5:
    print("People!")
else:
    print("No people!")
  