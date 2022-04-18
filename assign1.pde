//設立圖片變數
PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage soldierImg;
PImage robotImg;
PImage groundhogImg;
int x =0;
int lightPos = 240+25;

 
//插入圖片檔案
void setup() {
    size(640, 480, P2D);
   bgImg = loadImage("img/bg.jpg");
   soilImg = loadImage("img/soil.png");
   lifeImg= loadImage("img/life.png");
   soldierImg = loadImage("img/soldier.png");
   robotImg = loadImage("img/robot.png");
   groundhogImg = loadImage("img/groundhog.png")
}


void draw() {
  //寫入圖片座標，讓他畫上去
  image(bgImg,0,0);
  image(soilImg, 0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  image(soldierImg, x, 160);
  image(robotImg, 240, 240);
  image(groundhogImg, 240, 240);
  
  //雷射光
  strokeWeight(10.0);
  strokeCap(ROUND);
  stroke(255,0,0);//顏色(紅)
  line(lightPos -40, 240+37, lightPos, 240+37);//雷射光座標變化
  lightPos=lightPos-2;
  
  x=x+1; //士兵x座標的變化
  if ( x > 640) //當士兵超出右邊邊界時回到左側
    x = -80;
}
