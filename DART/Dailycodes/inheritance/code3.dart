class MacDIndia{

double burger = 150.0;
double fries = 90.0;

void food(){
print("Burger, Price : $burger");
print("Fries, Prrice : $fries");
}
}

class SinhgadMacD extends MacDIndia{

}

class KatrajMacD extends MacDIndia{
void Facility(){
print("Drive Thru");
}
}

void main(){
SinhgadMacD obj = SinhgadMacD();
obj.food();

KatrajMacD kobj = KatrajMacD();
kobj.food();
kobj.Facility();
}

