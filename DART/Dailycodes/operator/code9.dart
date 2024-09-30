//type check

void main(){

int x = 10;
var y = 50.50;
num z= 20;
String str = "Kanha";

print(x is int);      //true
print(y is int);      //false
print(y is double);   //true
print(z is int);      //true
print(z is num);      //true 
print(str is! String); //false
print(x is num);       //true
print(y is num);       //true
print(str is num);       //false
}
