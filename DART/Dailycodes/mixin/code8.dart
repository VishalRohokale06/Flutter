abstract class Demo{
void fun();
}

abstract class Memo{
void fun();
}

mixin FunMethod on Demo{
void fun(){
print("In fun-Mixin");
}
}

class Child extends Demo with FunMethod{}

void main(){
Child obj = Child();
obj.fun();
}
