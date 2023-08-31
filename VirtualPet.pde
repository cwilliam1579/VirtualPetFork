import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup() {
  //size
size(400,400);
noStroke();  
  arduino = new Arduino(this, Arduino.list()[1], 57600);
}

void draw() {
int y = arduino.analogRead(5);
int x = (235-y);
//colors
color grey = color(169,169,169);
color pink = color(255,204,229);
color darkpink = color(246,142,142);
color medgrey = color(150,150,150);
color darkergrey = color(135,135,135);
color darkgrey = color(187,183,213);
color black = color(0,0,0);

fill(black);
rect(0, 0, 400, 400);

//ears
noStroke();
fill(darkergrey);
ellipse (275-(x*0.06),50+(x*0.06),90,90);
fill(darkergrey);
ellipse (125+(x*0.06),50+(x*0.06),90,90);

//earliner
fill(pink);
ellipse (275-(x*0.06),50+(x*0.06),75,75);
fill(pink);
ellipse(125+(x*0.06),50+(x*0.06),75,75);

//arms
noStroke();
fill(medgrey);
ellipse(250,200,150,50);
ellipse(150,200,150,50);

//legs
noStroke();
fill(darkergrey);
ellipse(160,355,50,75);
ellipse(240,355,50,75);

//body
noStroke();
fill(darkergrey);
ellipse(200,245,200,215);
fill(medgrey);
ellipse(200,245,150,175);



//head
fill(169+(x*.3),169+(x*.099),169+(x*0.16));
ellipse(200,100,160,140);

//eyes
fill(black);
ellipse(175+(x)*0.05,85+(x)*0.05,20,20);
fill(black);
ellipse(225-(x)*0.05,85+(x)*0.05,20,20);

System.out.println(x);

//nosecircle
fill(darkgrey);
ellipse(200,130,70,50);

//nose
fill(darkpink);
triangle(190,120,200,140,210,120);

//whiskers
strokeWeight(2);
strokeCap(ROUND);
stroke (0,0,0);
line(215,140,290,160);
line(185,140,110,160);
line(215,130,290,130);
line(185,130,110,130);
line(215,120,290,100);
line(185,120,110,100);


}
