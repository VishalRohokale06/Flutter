mixin Parent1{
int x = 10;
void fun(){
print("In fun-Parent1");
}
}

mixin Parent2{
int y = 20;
void run(){
print("In run-Parent2");
}
}

class Child with Parent1,Parent2{
}

void main(){
Child obj = Child();
obj.fun();
print(obj.x);
obj.run();
print(obj.y);
}
