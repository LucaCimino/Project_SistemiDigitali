import tensorflow as tf
from tensorflow.keras import layers, models
from tensorflow.keras.preprocessing.image import ImageDataGenerator


###################################

# IMAGE SIZE
WEIGHT = 256
HEIGHT = 256

TRAINING_DATASET = "/home/luca/Scrivania/Magistrale/SistemiDigitali/Progetto/dataset/training/"
TESTING_DATASET = "/home/luca/Scrivania/Magistrale/SistemiDigitali/Progetto/dataset/testing/"

EPOCHS = 20

###################################


model = models.Sequential()

# Dimensioni delle immagini in ingresso alla nostra rete
input_shape=(WEIGHT, HEIGHT, 3)

model.add(layers.Conv2D(32, (3, 3), padding='same', activation='relu', input_shape=input_shape))
model.add(layers.MaxPooling2D((2, 2)))

model.add(layers.Conv2D(64, (3, 3), padding='same', activation='relu'))
model.add(layers.MaxPooling2D((2, 2)))

model.add(layers.Conv2D(64, (3, 3), padding='same', activation='relu'))
model.add(layers.MaxPooling2D((2, 2)))

model.add(layers.Flatten())
model.add(layers.Dense(128, activation='relu'))
model.add(layers.Dropout(0.5))
model.add(layers.Dense(1, activation='sigmoid'))

# Compila il modello
model.compile(optimizer='adam', 
              loss='binary_crossentropy', 
              metrics=['accuracy'])

model.summary()


# Percorsi dei dataset
train_data_dir = TRAINING_DATASET
test_data_dir = TESTING_DATASET

train_datagen = ImageDataGenerator(rescale=1.0/255)
test_datagen = ImageDataGenerator(rescale=1.0/255)

train_generator = train_datagen.flow_from_directory(
    train_data_dir,
    target_size=(WEIGHT, HEIGHT),
    batch_size=16,
    class_mode='binary'
)

test_generator = test_datagen.flow_from_directory(
    test_data_dir,
    target_size=(WEIGHT, HEIGHT),
    batch_size=16,
    class_mode='binary'
)


# Addestra il modello
history = model.fit(train_generator, 
                    epochs=EPOCHS, 
                    verbose=2,
                    validation_data=test_generator)

# Valuta il modello
test_loss, test_acc = model.evaluate(test_generator)
print(f'\nTest accuracy: {test_acc}')


# Salvo i pesi
model.save('model')