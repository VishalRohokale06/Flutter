class Parent{

Parent(){
print("In Parent Constructor");
}
call(int x,int y){
print("In Call Parent");
return x+y;
}
}

class Child extends Parent{
Child(){
print("Child Constructor");
}
}

void main(){
Child obj = Child();
print(obj(10,20));
}
