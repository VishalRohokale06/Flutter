class Company{

int empCount = 1350;
String cmpName = "Amazon";

Company(int empCount,String cmpName){
print("In Company");
print(this.empCount);
print(this.cmpName);
}
}

void main(){

Company obj = Company(12,"VR");
}
