Particle bruh[];

void setup()
{
	size(600,600);
	background(0);
	frameRate(60);

	bruh = new Particle[500];

	for(int i=0;i<bruh.length;i++){

			bruh[i]=new NormalParticle();
	} 
}
void draw()
{
	for(int i=0;i<bruh.length;i++){
		bruh[i].show();
		bruh[i].move();
	}
}
interface Particle
{

	public void move();
	public void show();

}
class NormalParticle implements Particle
{
	double myX,myY,myAngle,mySpeed;

	NormalParticle(){

		myX=300;
		myY=300;
		myAngle=2*Math.PI*Math.random();
		mySpeed=50*Math.random();

	}
	public void move(){

		myX=myX+Math.cos(myAngle)*mySpeed;
		myY=myY+Math.sin(myAngle)*mySpeed;
		myAngle+=.005;
		
	}
	public void show(){

		fill(255,0,0);
	
		ellipse((float)myX,(float)myY,5.0,5.0);

	}
}