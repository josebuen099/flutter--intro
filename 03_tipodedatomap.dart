void main(){
  final pokemon = {
    'name' : 'Ditto',
    'hp' : 100,
    'isAlive' : true,
    'imagenes':{
      1 : 'ditto/back.png',
      2 : 'ditto/frond.png'
    }

  };
    //llave 
  final pokemons ={
    1:'ditto',
    2:'pikachu',

  };
  print(pokemon);
  print('name: ${pokemon['name']}');
  //print('imagenes: ${pokemon['imagenes'][2]}');
print('$pokemons');

}