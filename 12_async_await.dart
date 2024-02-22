void main() async {
  print('inicia el programa');

  try{
    final value = await httpGet('http//:josebuen.com');

  print(value); 

  }catch(error){
    print('tenemos un error: $error');


  }
  

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'error de la peticion';
 // return 'tenemos el valor de la peticion';
}
