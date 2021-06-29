# Processing-Projects

This repository is dedicated to two of my very first self-supervised projects in Processing.
It contains the implementation of a two-minute animation and of an interactive Tic Tac Toe game.


<p float="left">
  <img src="Photos/animation.png" height="100px" />
  <img src="Photos/ttt1.png" width="20%" /> 
  <img src="Photos/ttt2.png" width="20%" />
</p>


The full animation can be watched [here](https://youtu.be/5g5aKYJhM1g).

## Getting Started

These instructions will get you a copy of the projects running on your local machine.  


### Prerequisites

Please install

## Running the code

The .ino code can be found in the folder ./Arduino Code

Open the code in your Arduino IDE and connect you microcontroller to your PC (note that you might need a FTDI breakout module and a mini USB cable).
Next, select the appropriate serial port and Arduino Board in the IDE tool bar. Then compile the program by clicking the check symbol and finally upload your program on the microcontroller by clicking on the right arrow. Now, you may disconnect the controller from your PC. For a more detailed description have a look at the [Sew Electric](http://sewelectric.org/diy-projects/3-programming-your-lilypad/) Website.


## Testing and Troubleshooting

* In case that your prototype or some parts do not work at all, check for loose connections. I.e., check if the threads are connected tightly to the microcontroller and to the electrical components such as resitors and transistors.
* To avoid short circuits etc., ensure that there are no conductive yarns crossing each other. In case of crossings, make sure to insulate them such that the threads do no touch each other. The same holds for the yarns' ends that should not touch each other. Tip: You can use, e.g., some hot glue or Sugru to insulate the yarn crossings.
* Use a power source that fits your microcontroller (usually between 3.3V and 5V).
* Make sure to use the multimeter for testing purposes correctly. I.e., ensure that there is no loose contact between the conductive parts and the multimeter clips. An inappropriate use might give you unreliable testing results (as demonstrated in the ./Media/Videos/misusedMultimeter.mp4).

## Built With

* [Processing 2.1](https://processing.org/download/) - Coded in PDE (Processing Development Environment)

