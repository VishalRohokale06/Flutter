class Parent{
int? x;
int? y;
Parent({this.x,this.y}){
print("Parent Constructor");
print(x);
print(y);
}
}

class Child extends Parent{
Child(int x,int y):super(x:x,y:y){
print("Child Constructor");
print(x);
print(y);
}
}

void main(){
//Parent obj = Parent(x:10,y:20);
Child obj2 = Child(30,40);
}
