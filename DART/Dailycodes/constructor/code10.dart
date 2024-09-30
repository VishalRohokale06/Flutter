class Player{

String? pName;
double? sal;
int? jerNo;

Player(this.jerNo,this.pName,[this.sal=3.5]){
print("In Constructor");
}

void pInfo(){
print(jerNo);
print(pName);
print(sal);
}
}

void main(){
Player obj = Player(45,"Rohit");
obj.pInfo();

Player obj1 = Player(7,"MSD",7.7);
obj1.pInfo();
}
