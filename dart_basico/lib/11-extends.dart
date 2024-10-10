void main() {
  final superman = new Heroe('Clark Kent', 544, poder: 'Superfuerza');
  final luthor = new Villano('Lex Luthor', poder: 'Intelecto Superior');
  print(superman);
  print(luthor);

  final calc = CalculadoraAvanzada();
  print('Suma: ${calc.suma(10, 5)}');
  print('Resta: ${calc.resta(10, 5)}');
  print('Multiplicación: ${calc.multiplicacion(10, 5)}');
  print('División: ${calc.division(10, 5)}');
}

abstract class Personaje {
  String? poder;
  String nombre;
  Personaje(this.nombre, {this.poder}); // Se puede pasar poder como parámetro opcional

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int valentia = 100;
  int valorx;
  Heroe(String nombre, this.valorx, {String? poder}) : super(nombre, poder: poder);
}

class Villano extends Personaje {
  int maldad = 50;
  Villano(String nombre, {String? poder}) : super(nombre, poder: poder);
}

// Clase Operacion
class Operacion {
  double suma(double a, double b) => a + b;
  double resta(double a, double b) => a - b;
  double multiplicacion(double a, double b) => a * b;
}

// Clase derivada CalculadoraAvanzada que extiende Operacion
class CalculadoraAvanzada extends Operacion {
  double division(double a, double b) => a / b;
}
