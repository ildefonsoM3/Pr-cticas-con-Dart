import 'persona.dart';

void main(List<String> arguments) {
  List<String> list;
  list = ['Negro', 'Blanco'];
  list.add('Rosa');
  print(list);

  List<String> listAux;
  listAux = ['Verde', 'Amarillo'];

  list.addAll(listAux);
  print(list);

  list.removeAt(2);
  print(list);

  Set set;
  set = {'Jesús', 'Mario', 'Adriana'};
  print(set);

  set.add('Erika');
  print(set);

  Map map;
  map = {1: 'Manzana', 2: 'Pera', 3: 'Apio'};

  print(map);

  Map mapAux;
  mapAux = {11: 'Sandia', 90: '', 7: 'Naranja', 12: 'Manzana'};

  map.addAll(mapAux);
  print(map);

  //final es una variable que debe declar e inicializarse en ese momento
  //final nombre = "Ildefonso"
  //const es la misma variable solo que se realiza en tiempo de compilacion
  //const edad = 32
  //si se requiere una constante para una clase debera ser definica como static const
  final nombre = 'Ildefonso';
  print(nombre);

  const edad = 32;
  print(edad);
  //La diferencia principal es que const es alojada en memoria y
  // final solo es alojada en memoria al momento de utilizarla

  // FUNCIONES //
  funcionArrow(9, 9);
  var result = funcionArrowRetorno(10, 70);
  print(result);
  //función anónima
  List listPersonas;
  listPersonas = ['Logan', 'Clark', 'Barry'];
  listPersonas.forEach((persona) {
    if (persona == 'Logan') {
      print('Soy Wolverine');
    }
    if (persona == 'Clark') {
      print('Soy Superman');
    }
    if (persona == 'Barry') {
      print('Soy Flash');
    }
  });
  print('\n');

  var progra = Programador('Manuel', 30, 'Hombre', 'programador');
  progra.diasVividos = 30;
  progra.computadora = 'Lenovo';
  progra.lenguaje = 'Javascript';
  progra.saludar();
  progra.decirQuienEs();
  progra.actividad();
  print(
      '${progra.nombre} tiene la edad de ${progra.edad}, así que ha vivido ${progra.diasVividos}');

  var musico = Musico('Osvaldo', 27, 'Hombre', 'Músico');
  musico.diasVividos = 27;
  musico.generoMusical = 'rock';
  musico.instrumento = 'bajo eléctrico';
  musico.grupo = 'los Dealers';
  musico.saludar();
  musico.decirQuienEs();
  musico.actividad();
  print(
      '${musico.nombre} tiene la edad de ${musico.edad}, así que ha vivido ${musico.diasVividos}');
}

//Función Arrow
void funcionArrow(int a, int b) =>
    print('El valor de la suma en la función arrow es ${a + b}');
//Función Arrow con return
int funcionArrowRetorno(int a, int b) => a + b;
