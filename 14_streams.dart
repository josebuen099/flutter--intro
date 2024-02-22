void main(){
  emitNumber().listen((value) {
    print('String value:$value');
    
  });
}
 Stream<int> emitNumber(){

 return Stream.periodic(const Duration(seconds: 1), (value){
//  print('desde el Strea periodic$value');
return value;

  }).take(5);
}