class Company{

int? empCount;
String? cmpName;

Company(int empCount, String cmpName){
print("In Constructor");
empCount = empCount;
cmpName = cmpName;
print("In Constructor");
print(empCount);
print(cmpName);
print(this.empCount);
print(this.cmpName);
}
}

void main(){
Company obj = Company(2222,"VR");
}
