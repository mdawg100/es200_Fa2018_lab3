% 30 Oct 20 18
% attempt to connect to joystick
% ONLY RUN THIS ONCE 

% open serial port from lecture
s = serial('COM8'); % I checked with TeraTerm it's COM8 for Joystick 5
set(s,'BaudRate',9600); % 9600 8N1
set(s,'DataBits',8);
set(s,'Parity','None');
set(s,'StopBits',1);
set(s,'FlowControl','None');
set(s,'TimeOut',0.5);
fopen(s);


% see if i can print out the expected $JOYSTK,FFFF,512,512,512,512*33
% to test I can do like this
fscanf(s,"%s"); 