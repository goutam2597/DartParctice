import 'dart:io';

class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  Car car1 = Car('Toyota', 'Corolla', 2015, 50000);
  Car car2 = Car('Honda', 'Civic', 2018, 30000);
  Car car3 = Car('Ford', 'Mustang', 2020, 10000);

  car1.drive(150);
  car2.drive(200);
  car3.drive(50);

  print('Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} - Miles Driven: ${car1.getMilesDriven()} - Age: ${car1.getAge()}');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} - Miles Driven: ${car2.getMilesDriven()} - Age: ${car2.getAge()}');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} - Miles Driven: ${car3.getMilesDriven()} - Age: ${car3.getAge()}');

  print('Total number of cars created: ${Car.numberOfCars}');
}