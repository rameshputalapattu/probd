module distributions.categorical;
import std.algorithm;
import std.range;
import std.stdio;

class DiscreteProb(T) {
    double []probs;
    T []universe;
    double []cumProb;
    

    this(double []probs,T []universe) {
        this.probs = probs;
        this.universe = universe;
        this.cumProb = this.probs.cumulativeFold!((x,y) => x+y).array;
 
    }


    T sample() {
        import std.random;
        auto randVal = uniform01();
        auto chosen = this.cumProb.
                       map!(x => (randVal < x )).
                       enumerate().filter!(x => x[1]).array[0][0];
        return universe[chosen];
    
    }



    



    


}