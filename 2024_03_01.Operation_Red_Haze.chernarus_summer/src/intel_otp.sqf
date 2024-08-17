if (hasInterface) then 
{ 
 this addAction [ 
  "Photograph Notepad",
  { [_this, "action"] spawn BIS_fnc_initIntelObject }, 
  [], 
  10, 
  true, 
  true, 
  "", 
  "isPlayer _this && { _this distance _target < 2 } && 
  { (side group _this) in (_target getVariable ['RscAttributeOwners', [west, east, resistance, civilian]]) }" 
 ]; 
};

if (isServer) then 
{ 
  this setVariable [ 
  "RscAttributeDiaryRecord_texture", 
  "img\otp_pic.jpg", 
  true 
 ]; 
 
 
 [ 
  this, 
  "RscAttributeDiaryRecord",
  ["One Time Pad (OTP)", "While searching around Nikolić's farm, in a dark garage operators found a small notepad. Opened page contains a riddly or a crossword. After photographing the notepad, the operator uploads it to the local share for further analysis. Further explanation on One Time Pads can be found in Briefing."] 
 ] call BIS_fnc_setServerVariable; 

 this setVariable ["recipients", [west, east, resistance, civilian], true]; 
 this setVariable ["RscAttributeOwners", [west, east, resistance, civilian], true]; 

};

player createDiaryRecord ["Diary", ["OTP Tutorial", "<p>OOC: (( The one-time pad (OTP) is a cryptographic technique to send messages. It involves using sheets with secret keys. If you read this you have found one. The sender and receiver both have the identical pads. To encode a message, the sender combines each letter of the plain text with the corresponding key number using the pad (bottom of the pad).</p>
<br /><br />
<img image='img\otp_example.jpg' /><br /><br />
<p>For example, I want to send you a plain text &quot;SALUT&quot; encrypted with One-Time Pad:<br />

1. Beforehand, we agree on the key (5, 4, 5, 11, 21) and both keep a copy of it.<br />
2. I want to transmit plain text SALUT. I will find a corresponding number for each letter: S(19) A(1) L(12) U(21) T(20).<br />
3. To encrypt the plain text I will subtract the key and receive a cipher text.<br /><br />
19 - 5 = 14<br />
1 - (4 mod 26) = 23 ( 1 - 4 = -3; 26 - 3 = 23)<br />
12 - 5 = 7<br />
21 - 11 = 10<br />
20 - (21 mod 26) = 25<br /><br />
As a result I get a cipher text (14, 23, 7, 10, 25) that I can transmit over unencrypted channels, so only recepient of the message can decrypt it.</p>
<p>Decryption works in reverse. You own a key (5, 4, 5, 11, 21) and receive a cipher (14, 23, 7, 10, 25). By adding these values (modulo 26) you will receive the plain text SALUT (19, 1, 12, 21, 20).</p>
<br /><br />
<p>Below is the One-Time Pad that you have found. Redraw it in your notepad and be ready for the transmission of the cipher. ))</p>
<img image='img\otp_itself.jpg' />"]]