class Demo{

final int? data;
final String? name;
const Demo(this.data,this.name);
}

void main(){
const Demo obj1 = Demo(12,"Hello");
print(identityHashCode(obj1));

const Demo obj2 = Demo(12,"Hello");
print(identityHashCode(obj2));
}
