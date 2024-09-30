class Player{
int? jerNo;
String? pName;
double? sal;

Player(this.jerNo,this.pName,this.sal){
print("In Constructor");
}

void pInfo(){
print(jerNo);
print(pName);
print(sal);
}
}

void main(){
Player obj = Player(45,"Rohit",5.5);
obj.pInfo();
}

