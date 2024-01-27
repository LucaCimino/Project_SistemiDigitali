import cv2

img = cv2.imread("/home/luca/Scrivania/Magistrale/SistemiDigitali/dataset/training/people/86.png")

for x in range(0, img.shape[0]):
    for y in range(0, img.shape[1]):
        img[x,y,0] = 255 - img[x,y,0]
        img[x,y,1] = 255 - img[x,y,1]
        img[x,y,2] = 255 - img[x,y,2]

cv2.imwrite("/tmp/PROVA2.png", img)

