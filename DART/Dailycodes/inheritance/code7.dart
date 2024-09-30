//SUPER KEYWORD

class Demo{
Demo(){
print("Demo Constructor");
}
call(){
print("x");
}
}

class Child extends Demo{
Child(){
super();
print("Child Constructor");
}
}

void main(){
Child obj = Child();
}
