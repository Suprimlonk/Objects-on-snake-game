//cretae the class of the objects
class Objects {
    float x, y;
    float side;
    color c;
    int time;
    int finaltime;
    boolean activo;
    //create variables
    objetos(float x_, float y_, float side_,int time_,int finaltime_, boolean activo_){
        x=x_;
        y=y_;
        side=side_;
        c=c_;
        finaltime=finaltime_;
        activo=activo_;
    }
    //show the objects
    void state(){
        full(c);
        noStroke();
        rect(x,y,side,side);
    }
    //make a timer
    void duration(){
        time=millis();
        finaltime=15000
        if (millis()-time<finaltime)
        
    }
}
