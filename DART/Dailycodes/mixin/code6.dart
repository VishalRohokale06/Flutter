mixin Parent1{
int x = 10;
void fun(){
print("In fun-Parent1");
}
}

mixin Parent2{
int x = 20;
void fun(){
print("In fun-Parent2");
}
}

class Demo extends Object{
Demo():super(){
print("Demo Constructor");
}
}

class Child extends Demo with Parent2,Parent1{
Child():super(){
print("Constructor Child");
}
}

void main(){
Child obj = Child();
obj.fun();
print(obj.x);
}
