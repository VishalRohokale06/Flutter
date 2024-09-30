abstract class Parent1{
void fun();
}

abstract class Parent2{
void run();
}

class Child implements Parent1,Parent2{
void fun(){
print("In Fun-Child");
}

void run(){
print("In Run-Child");
}
}

void main(){
Child obj = Child();
obj.fun();
obj.run();
}

