//cretae the class of the objects
class Objects {
    float x, y;
    float side;
    color c;
    int time;
    int finaltime;
    boolean active;
    //create variables
    objetos(float x_, float y_, float side_,int time_,int finaltime_, boolean active_){
        x=x_;
        y=y_;
        side=side_;
        c=c_;
        finaltime=15000;
        active=active_;
    }
    //make a timer
    void duration(){
        if (millis()-time>finaltime){
            active = !active; //Flips state: true to false or false to true
            time=millis(); //Resets the timer
        }
    }
    //show the objects
    void state(){
        if (activo){
            fill(c);
            noStroke();
            rect(x,y,side,side);
        }
    }
    // create colision with the object
    boolean colide(Player p){
        return active &&
            p.x < x + side &&
            p.x + p.size > x &&
            p.y < y + side &&
            p.y + p.size > y;
    }
}
