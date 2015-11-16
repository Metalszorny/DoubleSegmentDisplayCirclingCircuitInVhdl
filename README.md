# kisZH1_2013_osz
=================


About:
------
The task:
	Design a stepping circuit. The circuit operates as follows:
	1. At the beginning (after downloading or reset) as shown, four segments light up.
	2. During operation (no reset) at every 1 seconds the left side of the two illuminating segments move around                    counter-clockwise
	   on the outer segments of the left two 7 segment display.
	   While moving the segment the front blink at 4 Hz.
	   The two right side lighting segment move around clockwise at every 2 seconds on the outer segments of the right two 7        segment display.
	   While moving the segment the front flashes at 2 Hz.
	3. The red dotted lines indicate the outer segments separately of both circles.
	4. Use asynchronous reset (BTN3) and 50 MHz clock signal.


Used languages:
---------------
- VHDL


Features:
---------
- Concurent and Sequential Processes
- Two Module Mapping


Enviroment:
-----------
- IDE: Xilinx ISE WebPack 13.2
- Test: Digilent Basys 2 panel with Xilinx Spartan 3E-100 CP132 FPGA
- OS: Microsoft Windows XP Professional Service Pack 3, 32 bit


Warning:
--------
- Hungarian language is used in the application.
