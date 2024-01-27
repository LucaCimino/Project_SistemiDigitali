import cv2

img = cv2.imread("/home/luca/Scrivania/Magistrale/SistemiDigitali/dataset/training/people/86.png")


for x in range(0, img.shape[0]):
    for y in range(0, int(img.shape[1] / 2)):
        R = img[x,y,0]
        B = img[x,y,1]
        G = img[x,y,2]

        img[x,y,0] = img[x, img.shape[0]-y, 0]
        img[x,y,1] = img[x, img.shape[0]-y, 1]
        img[x,y,2] = img[x, img.shape[0]-y, 2]

        img[x, img.shape[0]-y, 0] = R
        img[x, img.shape[0]-y, 1] = B
        img[x, img.shape[0]-y, 2] = G


cv2.imwrite("/tmp/FLIP.png", img)
