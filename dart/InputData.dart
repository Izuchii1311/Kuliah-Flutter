// Memanggil library dart.id
import 'dart:io';

main() {
  stdout.write("Siapa Kamu ?? ");
  var nama = stdin.readLineSync();
  print("Hallo, $nama");
}