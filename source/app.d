import std.stdio;
import std.algorithm;
import std.range;
import distributions.categorical;



void main()
{

	
	auto myprob = new DiscreteProb!(string)([0.3,0.5,0.1,0.1],["red","blue","yellow","green"]);
	foreach(i; 1..100) {
       writeln(myprob.sample());
	}
	
	


}