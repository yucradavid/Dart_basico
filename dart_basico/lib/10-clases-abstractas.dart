void main() {
  final perro = new Perro();
  final gato = new Gato();
  sonidoAnimal(perro);
  sonidoAnimal(gato);

  final calc = Calculadora();
  print('Suma: ${calc.suma(10, 5)}');
  print('Resta: ${calc.resta(10, 5)}');
  print('Multiplicación: ${calc.multiplicacion(10, 5)}');
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

abstract class Animal {
  int? patas;
  void emitirSonido();
}

class Perro implements Animal {
  int? patas;
  void emitirSonido() => print('Guauuuuuuuu');
}

class Gato implements Animal {
  int? patas;
  int? cola;
  void emitirSonido() => print('Miauuuuuuuu');
}

// Clase abstracta Operacion
abstract class Operacion {
  double suma(double a, double b);
  double resta(double a, double b);
  double multiplicacion(double a, double b);
}

// Clase derivada Calculadora que implementa Operacion
class Calculadora extends Operacion {
  @override
  double suma(double a, double b) => a + b;

  @override
  double resta(double a, double b) => a - b;

  @override
  double multiplicacion(double a, double b) => a * b;
}
