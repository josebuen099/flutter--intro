
abstract class animales{

}
abstract class mamifero extends animales{}
abstract class ave extends animales{}
abstract class pez extends animales{}
//clasificacion 
abstract class volador{
  void volar()=> print('vuela');
}
abstract class nadador{
  void nadar()=> print('nada');
}
abstract class caminante{
  void camina()=> print('caminar');
}


class Delfin extends mamifero with nadador{}
class Murcielago extends mamifero with caminante,volador{}
class Gato extends mamifero with caminante{}

class Paloma extends ave with volador,caminante{}
class Pato extends ave with volador,nadador,caminante{}

class Tiburon extends pez with nadador{}
class pezVolador extends pez with nadador,volador{}


void main() {
  final flipper =Delfin();
flipper.nadar();
}
