
import cv2
import numpy as np
import time

""" Obtains image mask
    Inputs: 
        frame1 - Grayscale frame at time t
        frame2 - Grayscale frame at time t + 1
        kernel - (NxN) array for Morphological Operations
    Outputs: 
        mask - Thresholded mask for moving pixels
"""

frame1 = cv2.imread("frame1.jpg")
frame2 = cv2.imread("frame2.jpg")
kernel=np.array((9, 9), dtype=np.uint8)

total_time = 0

startTime = time.time()

frame1 = cv2.cvtColor(frame1, cv2.COLOR_BGR2GRAY)
frame2 = cv2.cvtColor(frame2, cv2.COLOR_BGR2GRAY)

endTime = time.time()
print("Execution BRG2GRAY di 2 immagini =\t", "{:.4g}".format(endTime - startTime)  ,"s")
total_time = total_time + (endTime - startTime)

#######################################################################
startTime = time.time()

frame_diff = cv2.subtract(frame2, frame1)

endTime = time.time()
print("Execution subtract =\t\t\t", "{:.4g}".format(endTime - startTime)  ,"s")
total_time = total_time + (endTime - startTime)

#cv2.imshow("subtract", frame_diff)
#cv2.waitKey(0)  # Attendi finché non viene premuto un tasto
#cv2.destroyAllWindows() 

#######################################################################
startTime = time.time()

# blur the frame difference
frame_diff = cv2.medianBlur(frame_diff, 3)

endTime = time.time()
print("Execution medianBlur =\t\t\t", "{:.4g}".format(endTime - startTime)  ,"s")
total_time = total_time + (endTime - startTime)

#cv2.imshow("medianBlur", frame_diff)
#cv2.waitKey(0)  # Attendi finché non viene premuto un tasto
#cv2.destroyAllWindows() 

#######################################################################
startTime = time.time()

mask = cv2.adaptiveThreshold(frame_diff, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, \
                                cv2.THRESH_BINARY_INV, 11, 3)

endTime = time.time()
print("Execution adaptiveThreshold =\t\t", "{:.4g}".format(endTime - startTime) ,"s")
total_time = total_time + (endTime - startTime)

#cv2.imshow("adaptiveThreshold", mask)
#cv2.waitKey(0)  # Attendi finché non viene premuto un tasto
#cv2.destroyAllWindows() 

#######################################################################
startTime = time.time()

# morphological operations
mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel, iterations=1)

endTime = time.time()
print("Execution morphologyEx =\t\t", "{:.4g}".format(endTime - startTime)  ,"s")
total_time = total_time + (endTime - startTime)

#cv2.imshow("morphologyEx", mask)
#cv2.waitKey(0)  # Attendi finché non viene premuto un tasto
#cv2.destroyAllWindows() 

#######################################################################

startTime = time.time()

num_diff_pixels = np.sum(mask == 255)

endTime = time.time()
print("Execution num_diff_pixels =\t\t", "{:.4g}".format(endTime - startTime)  ,"s")
total_time = total_time + (endTime - startTime)


print("\nTOTAL TIME =\t\t\t", "{:.4g}".format(total_time), "s")



 