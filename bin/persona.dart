abstract class Persona {
  String nombre;
  int edad;
  String sexo;
  int _diasVividos;
  String profesion;

  //Constructor
  Persona(this.nombre, this.edad, this.sexo, this.profesion);

  void actividad();

  void saludar();

  void decirQuienEs();

/*
  set diasVividos(int edad) {
    _diasVividos = edad * 365;
  }

  int get diasVividos {
    return _diasVividos;
  }
  */
  set diasVividos(int edad) => _diasVividos = edad * 365;

  int get diasVividos => _diasVividos;
}

class Musico extends Persona {
  String instrumento;
  String grupo;
  String generoMusical;

  Musico(String nombre, int edad, String sexo, String profesion)
      : super(nombre, edad, sexo, profesion);

  @override
  void actividad() {
    print(
        'Mi profesión es $profesion y toco el $instrumento en el grupo $grupo de estilo $generoMusical');
  }

  @override
  void decirQuienEs() {
    var genero = (sexo.toLowerCase() == 'mujer') ? 'una' : 'un';
    print('Mi nombre es $nombre, tengo $edad años de edad y soy $genero $sexo');
  }

  @override
  void saludar() {
    print('Hola soy $nombre');
  }
}

class Programador extends Persona {
  String lenguaje;
  String computadora;

  Programador(String nombre, int edad, String sexo, String profesion)
      : super(nombre, edad, sexo, profesion);

  @override
  void actividad() {
    print(
        'Mi profesión es $profesion y se programar en $lenguaje. Tengo una computadora $computadora');
  }

  @override
  void decirQuienEs() {
    var genero = (sexo.toLowerCase() == 'mujer') ? 'una' : 'un';
    print('Mi nombre es $nombre, tengo $edad años de edad y soy $genero $sexo');
  }

  @override
  void saludar() {
    print('Hola soy $nombre');
  }
}
