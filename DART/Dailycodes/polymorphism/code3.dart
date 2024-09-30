class Parent{
void carrer(){
print("Famil Business");
}
dynamic marry(){
print("Deepika Padukone");
}
}

class Child extends Parent{
dynamic marry(){
print("Alia Bhat");
return 10.5;
}
}

void main(){
Child obj = Child();
obj.carrer();
obj.marry();
}

