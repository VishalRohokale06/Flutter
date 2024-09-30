class Parent{

int? x;
int? y = 20;

Parent(this.x,this.y){
print("Parent Constructor");
print(x);
print(y);
}
}

class Child extends Parent{
Child(super.x,super.y){
print("Child Constructor");
print(x);
print(y);
}
}

void main(){
Child obj = Child(10,30);
}
