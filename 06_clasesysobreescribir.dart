void main(){
final wolverine = new Hero(name: 'logan',power: 'regeneracion');

print(wolverine);
print(wolverine.name);
}
class Hero {
String name;
String power;

Hero({
  required this.name,
  required this.power
  });

/*Hero(String pName,String power)
:
 name=pName,
  power=pName;
*/
@override
String toString(){
  return '$name,$power not found';

}
}