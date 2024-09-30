import "dart:io";

/*void main(){
Demo obj = Demo();
print(obj.x);
print(obj.gety);

obj.setY=30;
print(obj.gety);
}
*/
class Demo{
int x = 10;
int _y = 20;

//int get gety{
//return _y;
//}

int get gety => _y;

void set setY(int _y) {
 this._y = _y;
}
}
