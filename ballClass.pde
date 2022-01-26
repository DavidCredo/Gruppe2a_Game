/* Hier haben wir Objekt orientiert gearbeitet.
Die Ball-Klasse wird ein mal verwendet um die Sterne auf dem Titelscreen zu animieren und ein weiteres Mal,
um die Hindernisse im Spiel darzustellen. Wir konnten uns somit viel Code sparen
*/
public class Ball  {

    float diameter;
    PVector location;
    PVector velocity;
    float vMax;
    color paint;
    boolean isColliding;

    /*Um die Klasse vielseitiger einsetzen zu können, nimmt der Constructor einen float und eine Farbe als Parameter.
    float diam wird verwendet um den Durchmesser der "Bälle" variabel anpassen zu können. Analog dazu die color Variable, 
    um kontextabhängig die Farbe zu variieren.
    */

    public Ball (float diam, color p) {
        this.diameter = diam;
        this.location = new PVector(random(diameter, width - diameter), random(diameter, height - diameter));
        this.velocity =  new PVector(random(-10, 10), random(-10, 10));
        this.vMax = 8;
        this.paint = p;
        this.isColliding = false;
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
        if (location.x > width - diameter || location.x < diameter) {
            velocity.x *= -1;
        } 
        if (location.y > height - diameter || location.y < diameter) {
            velocity.y *= -1;
        }
    }

    void collideWithObject() {
        if(isColliding) {
          velocity.x *= -2;
          velocity.y *= -2;
        } 
    }

    void setRandomLocation() {
        this.location = new PVector(random(diameter, width - diameter), random(diameter, height - diameter));;
    }
}
