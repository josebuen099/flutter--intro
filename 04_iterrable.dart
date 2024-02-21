void main(){
  final number =[1,2,3,4,5,6,7,8,9,9,10];
  print('lista original $number');
  print('leng ${number.length}');
  print('index ${number[0]}');
  print('first ${number.first}');
  print('reversed original ${number.reversed}');
  print('reversed ${number.reversed.toSet()}');

final numberGreaterThan5 =number.where(( int num){
  return num > 5;
});
print('numeros mayores a 5 $numberGreaterThan5');
}