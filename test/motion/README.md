Motion detection con immagini 640x480

```
root@pynq:/home/xilinx/jupyter_notebooks/CimiSteFede/motion# python3 getmask.py
Execution BRG2GRAY di 2 immagini =       0.03313 s
Execution subtract =                     0.005234 s
Execution medianBlur =                   0.07271 s
Execution adaptiveThreshold =            0.06242 s
Execution morphologyEx =                 0.01083 s
Execution num_diff_pixels =              0.008598 s

TOTAL TIME =                             0.1929 s
```


Motion detection con immagini 240x180

```
root@pynq:/home/xilinx/jupyter_notebooks/CimiSteFede/motion# python3 getmask_resized.py
Execution resized =                      0.01642 s
Execution BRG2GRAY di 2 immagini =       0.002689 s
Execution subtract =                     0.0009668 s
Execution medianBlur =                   0.01036 s
Execution adaptiveThreshold =            0.008713 s
Execution morphologyEx =                 0.001932 s
Execution num_diff_pixels =              0.00174 s

TOTAL TIME =                             0.04282 s
```