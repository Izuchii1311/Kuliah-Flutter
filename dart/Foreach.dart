void main(){
  print("- - - - - LATIHAN PERULANGAN (Foreach) DENGAN DART - - - - -");

  var flowers = ["Mawar", "Anggrek", "Kamboja", "Melati", "Tulip"];
  var flower;

  for(flower in flowers){
    print(flower);
  }

  print("Total bunga: ${flowers.length}");
}