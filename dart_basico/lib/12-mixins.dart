abstract class Animal {}
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}
mixin class Volador {
  void volar() => print('estoy volando');
}
mixin class Caminante {
  void caminar() => print('estoy caminando');
}
mixin class Nadador {
  void nadar() => print('estoy nadando');
}
class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Caminante, Volador {}
class Gato extends Mamifero with Caminante {}
class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}
class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

//para varias heredaciones

void main(){
  Murcielago m=new Murcielago();
  Murcielago mx=Murcielago();
  mx.caminar();
  mx.volar();
}
void main12() {
  final flipper = new Delfin();
  flipper.nadar();
}
