import 'package:hello_world/Vehicle.dart';

class Car extends Vehicle {

  /// 因Vehicle裡的makeSomeNoise()是抽象方法(沒有實作)，
  /// 所以繼承後"必須"實作此方法
  @override
  void makeSomeNoise() {
    print("WOOOOO");
  }
}