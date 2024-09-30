class Player{

int? jerNo;
String? pName;
double? sal;

Player(){
print("No args constructor");
}

Player.para(int jerNo,String pName,double sal){
print("Parameterised Constructor");
this.jerNo = jerNo;
this.pName = pName;
this.sal = sal;
}

void pInfo(){
print("Player No : $jerNo");
print("Player Name : $pName");
print("Player Salary : $sal");
}
}

void main(){
Player obj = Player();
obj.pInfo();
Player pobj = Player.para(7,"MSD",7.7);
pobj.pInfo();
}
