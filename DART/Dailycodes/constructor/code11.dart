class Player{

String? pName;
double? sal;
int? jerNo;

Player({this.jerNo,this.pName,this.sal});

void pInfo(){
print(jerNo);
print(pName);
print(sal);
}
}

void main(){
Player pObj = Player(pName:"MSD",sal:3.3,jerNo:7);
pObj.pInfo();
}
