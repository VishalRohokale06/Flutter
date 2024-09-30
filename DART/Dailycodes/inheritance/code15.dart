class Parent{

Parent(){
print("Parent Constructor");
}

Parent.named(){
print("Parent Named Constructor");
}
}

class Child extends Parent{

Child():super.named(){
print("Child Constructor");
}
}

void main(){
Parent obj = Parent();
Parent obj1 = Parent.named();
Child obj2 = Child();
}
