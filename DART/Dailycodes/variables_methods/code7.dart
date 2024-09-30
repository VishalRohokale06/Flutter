class Player{

int? jerNo;
String? pName;
static String? country = "India";

Player(this.jerNo,this.pName);

void pInfo(){
print(country);
}
}

void main(){
Player obj = Player(7,"MSD");
obj.pInfo();
}

