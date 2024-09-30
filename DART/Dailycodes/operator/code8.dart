void main(){

int x = 5;
int y = 6;
var ans = (++x < --y) || (x++ > ++y);
print(ans);
print(x);
print(y);

x= 5;
y = 6;
var ans1 = (++x < --y) && (x++ > ++y);
print(ans1);
print(x);
print(y);
}
