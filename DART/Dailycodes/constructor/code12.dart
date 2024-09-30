class Player{

int? jerNo;
String? pName;
double? sal;

Player({this.sal=1.9,this.pName,this.jerNo=19});

void pInfo(){
print(pName);
print(jerNo);
print(sal);
}
}

void main(){

Player obj = Player(jerNo:7,pName:"MSD",sal:7.7);
obj.pInfo();

Player obj1 = Player(pName:"Sachin");
obj1.pInfo();
}
