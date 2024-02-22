void main(){

  print('inicia el programa');
httpGet('http//:josebuen.com').then((value){
  print(value);
});

  print('fin del programa');
}

Future httpGet(String url){
  return Future.delayed(const Duration(seconds: 1),(){
return 'respuesta de la peticion http.';
  });

}
