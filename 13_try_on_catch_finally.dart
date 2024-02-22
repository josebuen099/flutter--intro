void main() async {
  print('inicia el programa');

  try {
    final value = await httpGet('http//:josebuen.com');

    print('resultado exitoso: $value');
  } on Exception catch (error) {
    print('entra en el on para la exception $error ');
  } catch (error) {
    print('tenemos un error: $error');
  } finally {
    print('final del try y catch');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('hay problemas con la url');
//  throw 'error de la peticion';
  // return 'tenemos el valor de la peticion';
}
