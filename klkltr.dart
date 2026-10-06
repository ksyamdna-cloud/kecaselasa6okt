import 'dart:io';

int penjumlahan(int a, int b) {
  int hasil = a + b;
  return hasil;
}

int pengurangan(int a, int b) {
  int hasil = a - b;
  return hasil;
}

int perkalian(int a, int b) {
  int hasil = a * b;
  return hasil;
}

double pembagian(int a, int b) {
  double hasil = a / b;
  return hasil;
}

void main() {
  String ulang = "y";
  while (ulang == "y") {
    print("1.penjumlahan");
    print("2.pengurangan");
    print("3.perkalian");
    print("4.pembagian");

    stdout.write("Pilih Menu:");
    int menu = int.parse(stdin.readLineSync()!);

    stdout.write("Masukan angka pertama:");
    int angka1 = int.parse(stdin.readLineSync()!);

    stdout.write("Masukan angka kedua");
    int angka2 = int.parse(stdin.readLineSync()!);

    if (menu == 1) {
      print("Hasil = ${penjumlahan(angka1, angka2)}");
    } else if (menu == 2) {
      print("Hasil = ${pengurangan(angka1, angka2)}");
    } else if (menu == 3) {
      print("Hasil = ${perkalian(angka1, angka2)}");
    } else if (menu == 4) {
      if (angka1 < 0 || angka2 < 0) {
        print("tidak bisa membagi angka kurang dari 0");
      }
      if (angka2 == 0) {
        print("Tidak bisa dibagi dengan 0");
      } else {
        print("Hasil = ${pembagian(angka1, angka2)}");
      }
    } else {
      print("menu tidak tersedia");
      stdout.write("hitung lagi ya? (y/n): ");
      ulang = stdin.readLineSync()!;
    }
  }
  print("pemrograman selesai.");
}
