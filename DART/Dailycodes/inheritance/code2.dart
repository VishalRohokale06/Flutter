class MacDIndia{
double burger = 150.0;
double fries = 90.0;

void food(){
print("Burger, Price : $burger");
print("Fries,  Price : $fries");
}
}

class SinhgadMacD extends MacDIndia{

}

void main(){
SinhgadMacD sobj = SinhgadMacD();
print(sobj.burger);
print(sobj.fries);

sobj.food();
}
