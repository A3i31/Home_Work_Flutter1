import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final number = KgNumber();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            color: Colors.white,
            width: 500,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  number.countryCode,
                  style:  const TextStyle(fontSize: 50),
                  ),
               const VerticalDivider(
                thickness: 5,
                color: Colors.black,
               ),
                Text(
                  number.idNumber, style:   const TextStyle(fontSize: 50),
                  ),
                  const VerticalDivider(
                    thickness: 5,
                  color: Colors.black,
                ),
                Text(
                  number.letters, style:  const TextStyle(fontSize: 50),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

abstract class AutoNumber {
  final String countryCode;
  final String idNumber;
  final String letters;

  AutoNumber(
      {required this.countryCode,
      required this.idNumber,
      required this.letters});
}

class KgNumber implements AutoNumber {
  @override
  String get countryCode => '01';

  @override
  String get idNumber => '5005';

  @override
  String get letters => 'AZA';
}

////
class Transport {
  String body;
  String engine;
  String transportWay;

  Transport(
      {required this.body, required this.engine, required this.transportWay});
}

class Car extends Transport
    with CountryOfRegistration, VehicleRegistrationNumber {
  Car(
      {required super.body,
      required super.engine,
      required super.transportWay});
}

class Bus extends Transport
    with CountryOfRegistration, VehicleRegistrationNumber {
  Bus(
      {required super.body,
      required super.engine,
      required super.transportWay});
}

class Boat extends Transport
    with CountryOfRegistration, VehicleRegistrationNumber {
  Boat(
      {required super.body,
      required super.engine,
      required super.transportWay});
}

class Plane extends Transport
    with CountryOfRegistration, VehicleRegistrationNumber {
  Plane(
      {required super.body,
      required super.engine,
      required super.transportWay});
}

mixin CountryOfRegistration {
  country() {
    print('country of registration');
  }
}

mixin VehicleRegistrationNumber {
  Vehicle() {
    print('vehicle registration number');
  }
}
