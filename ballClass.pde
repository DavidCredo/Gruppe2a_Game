public class Ball  {

    float diameter;
    PVector location;
    PVector velocity;
    PVector acceleration;
    float vMax;
    color paint;
    float rotationAngle;
    boolean isColliding;

    public Ball (float radius, color p) {
        this.diameter = radius;
        this.location = new PVector(random(diameter, width - diameter), random(diameter, height - diameter));
        this.velocity =  new PVector(random(-1, 2), random(-1, 2));
        this.acceleration = new PVector(random(-1, 2), random(-1, 2));
        this.vMax = 10;
        this.paint = p;
        this.rotationAngle = 0;
        this.isColliding = false;
    }

    void setIsColliding(boolean b) {
        this.isColliding = b;
    }

    void update() {       
        location.add(velocity);
        velocity.limit(vMax);
    }

    void display() {
        ellipseMode(CENTER);
        noStroke();
        fill(paint);            
        ellipse(location.x, location.y, diameter, diameter);        
    }

    void checkBoarderCollision() {
        if (location.x > width - diameter/2 || location.x < diameter/2) {
            velocity.x *= -1;
        } 
        if (location.y > height - diameter/2 || location.y < diameter/2) {
            velocity.y *= -1;
        }
    }

    void collideWithObject() {
        if(isColliding) {
          velocity.mult(-1.5);
        } 
    }
}
