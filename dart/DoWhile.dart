import 'dart:io';

void main(){
  print("- - - - - LATIHAN PERULANGAN (Do While) DENGAN DART - - - - -");

  stdout.write("Anda ingin melakukan perulangan berapa kali : ");
  var loop = stdin.readLineSync();
  int j = int.parse("$loop");

  int i = 1;
  do{
    print("Perulangan ke $i");
    i++;
  } while(i <= j);
}