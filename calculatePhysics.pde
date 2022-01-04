void calculateAcceleration() {
   PVector acceleration = inputVector();
    acceleration.normalize();
    acceleration.mult(1.2);
    velocity.add(acceleration);
    velocity.limit(15);
    position.add(velocity);
}

void checkBoarderCollision() {
    if(position.x >= width -75 || position.x <= 75 || checkCollision() ) {
        velocity.x *= -1.1;
    } else if (position.y >= height - 106 || position.y <= 80 || checkCollision()) {
        velocity.y *= -1.1;
    } 
}
