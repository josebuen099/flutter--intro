
void main() {
  //en caso de tener datos desde una peticion jSon se hace asi
  final rawJson = {'name': 'tony', 'power': 'money', 'isAlive': true};
  //para el caso que sea Json
final hull = Hero.fromJson(rawJson);

print(hull);

//final ironman = Hero(
  // name: 'ironman',
  // power: 'money ',
  // isAlive: false);
//print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});
  Hero.fromJson(Map<String, dynamic> jSon)
      : name = jSon['name'] ?? 'no name',
        power = jSon['power'] ?? 'no power found',
        isAlive = jSon['isAlive'] ?? 'no isAlive';

  @override
  //usando ternario para hacer una validacion
  String toString() {
    return '$name,$power,is Alive : ${isAlive ? 'yes' : 'nope'} ';
  }
}
