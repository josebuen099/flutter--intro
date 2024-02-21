void main(){
  final String pokemon = 'Ditto';
  final int hp=100;
  final bool isAlive=true;
  final List<String> abilities=['impostor'];
  final sprites = <String>['ditto/frond.png','ditto/back.png'];


  //dynamic ==null
  dynamic errorMessage ='hola';
  errorMessage=true;
  
  print("""
$pokemon,
$hp,
$isAlive,
$abilities,
$sprites,
$errorMessage
"""); 
}