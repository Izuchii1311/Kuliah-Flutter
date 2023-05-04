import 'dart:io';

class HitungSuhu{
  double kelvin = 50;

  double fromCelcius(double celcius){
    return celcius + 273.15;
  }

  double fromFahrenheit(double fahrenheit){
    return 5/9 * (fahrenheit - 32) + 273.15;
  }

  void printSuhu(){
    print("Suhu Kelvin : $kelvin");
    print("Suhu Celcius : {$kelvin - 273.15}");
    print("Suhu Fahrenheit : {($kelvin - * 9 / 5) - 459.67}");
  }
}
  void main(){
    double celcius = 50;
    double fahrenheit = 75;

    HitungSuhu hs = new HitungSuhu();
    print("Hasil Awal");
    double clKelvin = hs.fromCelcius(celcius);
    double fhKelvin = hs.fromFahrenheit(fahrenheit);

    hs.printSuhu();
    print("");

    print("Kelvin ke suhu lain");
    print("Hasil ke Celcius : $clKelvin");
    print("Hasil ke Fahrenheit : $fhKelvin");

  }