package fish;

public class Fish {

	String typeOfFish;
	int friendliness;
	
	public Fish(){
		typeOfFish = “Desconhecido”;
		friendliness = 3;
	}
	public Fish(String t, int f){
	typeOfFish = t;
	friendliness = f;
	}
	int getFriendliness(){
	return friendliness;
		}
	Fish amber = new Fish(AngelFish, 5);
	Fish james = new Fish();
	
	Fish nicestFish(Fish a, Fish b){
		if(a.getFriendliness()> b.getFriendliness())
		return a;
		else return b;
		}
	
	Fish nicestFish(Fish ... a){
		Fish temp = a[0];
		for(int I = 1; I < a.length; i++)
		if(temp.getFriendliness() < a[i].getFriendliness())
		temp = a[i];

		return temp;
		}
	}
