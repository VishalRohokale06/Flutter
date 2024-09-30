class Player{

int? jerNo;
String? pName;

static String? country = "India";

Player(this.jerNo,this.pName);

String? get gCountry{
return country;
}

void pInfo(){
print(jerNo);
print(pName);
print(country);
}}

void main(){
Player obj = Player(7,"MSD");
obj.pInfo();

print(obj.jerNo);
print(obj.pName);
print(obj.gCountry);
}
