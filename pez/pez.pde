int vy;
int y1,y2,y3,y4,yy1,yy2,yy3,yy4; //355, 315, 310
int y;
void setup(){
size(500,500);
background(#4458C1);
vy=1; 
y1= 100; y2= 80; y3= 45; y4= 25;

yy1= 355; yy2= 315; yy3= 310;
} 
void draw(){
fondo();
peces();
/////////////burbuja1
y1=y1-=vy;
if(y1<-30){
vy=-1;
y1=500;
}

if (y1>50){
vy=3;
}

//////////	burbuja2
y2=y2-=vy;
if(y2<-30){
vy=-1;
y2=490;
}

if (y2>50){
vy=3;
}
/////////////brubuja 3
y3=y3-=vy;
if(y3<-30){
vy=-1;
y3=470;
}

if (y3>50){
vy=3;
}
/////////////brubuja 4
y4=y4-=vy;
if(y4<-30){
vy=-1;
y4=480;
}

if (y4>50){
vy=3;
}

///////////////////////
yy1=yy1-=vy;
if(yy1<-30){
vy=-1;
yy1=480;
}

if (yy1>50){
vy=3;
}
//////////////
yy2=yy2-=vy;
if(yy2<-30){
vy=-1;
yy2=470;
}

if (yy2>50){
vy=3;
}
////////////////
yy3=yy3-=vy;
if(yy3<-30){
vy=-1;
yy3=460;
}

if (yy3>50){
vy=3;
}
}
