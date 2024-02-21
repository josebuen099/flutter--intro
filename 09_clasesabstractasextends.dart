//clases abstracta, extends Y implements
void main() {
  final plantSolar = plantaSolar(energiaInicial: 100);
  final plantNuclear = plantaNuclear(energiaInicial: 50);
  print(plantSolar);
  print('solar: ${cargarTelefono(plantSolar)}');
  print('nuclear: ${cargarTelefono(plantNuclear)}');
}

double cargarTelefono(energyPlant plant) {
  if (plant.energiaRestante < 10) {
    throw Exception('carga no disponible');
  }
  return plant.energiaRestante-10;
}

enum tipoPlanta { solar, nuclear, agua }

abstract class energyPlant {
  double energiaRestante;
  tipoPlanta tipo;
  energyPlant({required this.energiaRestante, required this.tipo});

  void consumoEnergia(double cantidad);
}

//EXTENDS O IMPLEMETS
class plantaSolar extends energyPlant {
  plantaSolar({required double energiaInicial})
  
      : super(energiaRestante: energiaInicial, tipo: tipoPlanta.solar);

  @override
  void consumoEnergia(double cantidad) {
    energiaRestante -= cantidad;
  }
}

class plantaNuclear extends energyPlant {
  plantaNuclear({required double energiaInicial})
      : super(energiaRestante: energiaInicial, tipo: tipoPlanta.nuclear);

  void consumoEnergia(double cantidad) {
    energiaRestante += cantidad;
  }
}
//las clases abstractas no se pueden llamar a si mismas 