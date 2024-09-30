class Parent{

Parent():super(){
print("Parent Constructor");
}
call(){
print("PArent Call");
}
}

class Child extends Parent{
Child():super(){
super();
print("Child Constructor");
}
}

void main(){
Child obj = Child();
obj();
}

