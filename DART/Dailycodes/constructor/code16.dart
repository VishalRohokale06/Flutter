class Demo{

final int? data;
final String? name;

const Demo(this.data,{this.name});
}

void main(){

Demo dobj1 = const Demo(10,name:"Hello");
Demo dobj2 = const Demo(10,name:"Hello");

print(identityHashCode(dobj1));
print(identityHashCode(dobj2));

Demo dobj3 = const Demo(10,name:"Hello");
Demo dobj4 = const Demo(101,name:"Hello");

print(identityHashCode(dobj3));
print(identityHashCode(dobj4));
}

