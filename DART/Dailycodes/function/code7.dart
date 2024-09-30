//FUNCTIONS WITH PARAMETER

void main(){

playerInfo(18,"Virat");
playerInfo(41,"Warner","Australia");
playerInfo(45,"Rohit");
}

void playerInfo(int jerNo,String pName,[String country = "India"]){
print("Jersey No:$jerNo Player Name=$pName Country :$country");
}
