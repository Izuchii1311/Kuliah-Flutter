import 'dart:io';

void main(){
  print("- - - - - LATIHAN SWITCH CASE DENGAN DART - - - - -");

  stdout.write("Masukkan Nama Hari Kuliah : ");
  var hari = stdin.readLineSync();
  String matakuliah;

  switch(hari){
    case "Senin":{
      matakuliah = "1. Network Security \n 2. Enterpreneurship";
      break;
    }
    case "Selasa":{
      matakuliah = "1. Mobile Programming \n 2. Artifical Intellegence";
      break;
    }
    case "Rabu":{
      matakuliah = "1. Application Programming Interface \n 2. Device Protocol";
      break;
    }
    case "Kamis":{
      matakuliah = "1. Container System";
      break;
    }
    default:{
      matakuliah = "Tidak Ada Matakuliah";
    }
  }

  print("Hari Kuliah : $hari");
  print("Jadwal MataKuliah: \n $matakuliah");

}