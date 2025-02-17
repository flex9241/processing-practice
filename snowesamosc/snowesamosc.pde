int f = 0;
float r, I;
void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  f++;
  background(0);
  fill(255);

  for (int i=0; i<99; i++) {
    I = i/99 * TAU;
    println(I);
    for (float n=1; n<3; n+=0.1) {
      r = (f * 3 + 9000) * noise(n) % 400;
      r *= n + noise(i);
      circle(250 + r * cos(I), 250 + r * sin(I), 5);
    }
  }
}

/*
https://x.com/SnowEsamosc/status/1889317514016080327
 f=0
 draw=_=>{
 f++||createCanvas(W=500,W)
 background(0)
 noStroke()
 fill(W)
 for(i=0;i<99;i++)
 for(n=1;n<3;n+=.1){
 r=(f*3+9e3)*noise(n)%400
 r*=n+noise(i)
 circle(250+r*cos(I=i/99*TAU),250+r*sin(I),5)
 }
 }
 */
