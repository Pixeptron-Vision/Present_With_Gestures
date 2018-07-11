#Present_With_Gestures
This MATLAB application (GUI made using MATLAB Guide) can open and begin the slideshow of MS PowerPoint file. Further, slide navigation (previous/next) can be controlled by hand gesture captured in the camera feed. 

Command to go to Next slide: Hand gesture, i.e, palm (left or right hand) with a single finger (anyone) open and rest closed.
Command to go to the Previous slide: Hand gesture, i.e, palm (left or right hand) with two fingers (any two) open and rest closed. 

Methods: 1) Hand detection using color segmentation of YCbCr image.  
            Gesture classification using Multi Layer Perceptron network using backpropagation. 
         2) PowerPoint Control by Matlab actxserver.
