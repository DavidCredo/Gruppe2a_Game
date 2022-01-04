void calculateAcceleration() {
   acceleration = inputVector().normalize();
   acceleration.mult(0.5);
}

void checkBoarderCollision() {
    if(position.x >= width -100 || position.x <= 100 || checkCollision() ) {
        velocity.x *= -1.1;
    }else if (position.y >= height - 106 || position.y <= 100 || checkCollision()) {
        velocity.y *= -1.1;
    } 
}

