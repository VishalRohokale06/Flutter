class Parent{

void career(){
print("Family Business");
}

void marry(){
print("Deepika Padukone");
}
}

class Child extends Parent{
void marry(){
print("Alia Bhat");
}
}

void main(){
Child obj = Child();
obj.career();
obj.marry();
}

