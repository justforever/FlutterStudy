import 'Car.dart';
import 'Horn.dart';

class SportCar implements Car, Horn {
  String brand = "Benzzzz";

  @override
  void honk() {
    print("BALABALABA");
  }

  @override
  void makeSomeNoise() {
    print("YEEEEEEEEE");
  }
}