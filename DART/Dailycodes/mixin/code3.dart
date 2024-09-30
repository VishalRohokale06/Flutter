mixin Parent{

int x = 10;
void fun(){
print("In Fun");
}
}

class Child with Parent{}

void main(){
Child obj = Child();
obj.fun();
print(obj.x);
}
