void main() {
  final miCuadrado = cuadrado(lado: 10);
  miCuadrado.lado=-5;
  print('area: ${miCuadrado.calcularArea()}');
}

class cuadrado {
  double _lado;

  cuadrado({required double lado})
  : assert(lado>=0,'lado mayor o igual a cero'),
   _lado=lado;

  double get area{
    return _lado*_lado;

  }
  set lado(double valor){
    print('set de nuevo dato $valor');
    if(valor<0) throw 'ingrese un numero mayor a cero';

    _lado=valor;
  }
  double calcularArea() {
    return _lado * _lado;
  }
}
