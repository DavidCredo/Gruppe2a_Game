//ArrayList wird verwendet, um effizient viele Objekte vom Typ Ball zu initialisieren
ArrayList<Ball> balls = new ArrayList<Ball>(); 

    void titleScreenLoop() {
         for (int i = 0; i < balls.size(); i++) {
        balls.get(i).update();
        handleCollision(balls);
        balls.get(i).checkBoarderCollision();
    }
    
    for (int j = 0; j < balls.size(); j++) {
          balls.get(j).display();
    }
    }

/*
Diese Funktion iteriert über sämtliche Elemente einer ArrayList vom Typ Ball und prüft auf Kollisionen mit jedem anderen Element in dem Array.
Wenn eine Kollision vorliegt, wird der Richtungsvektor der Kollision berechnet und auf die kollidierenden Elemente addiert/subtrahiert.
*/
    void handleCollision(ArrayList<Ball> objects) {
        Ball ball1;
        Ball ball2;      

        for (int i = 0; i < objects.size(); i++) {
            objects.get(i).isColliding = false;
            ball1 = objects.get(i);
            for (int j = i + 1; j < objects.size(); j++) {
                ball2 = objects.get(j);

                if(detectCollision(ball1,ball2)) {
                    ball1.isColliding = true;
                    ball2.isColliding = true;

                    PVector collisionNormal = PVector.sub(ball2.location, ball1.location);
                    collisionNormal.normalize();
                    
                    ball1.velocity.sub(collisionNormal);
                    ball2.velocity.add(collisionNormal);
                }             
              
            }
        }
    }
//Prüft ob zwei Objekte vom Typ Ball miteinander kollidiert sind und gibt entsprechend einen Boolean zurück.
    boolean detectCollision(Ball a, Ball b) {
        if (dist(a.location.x, a.location.y, b.location.x, b.location.y) <= (a.diameter / 2) + (b.diameter / 2)) {
            return true;
        }
        return false;
    }