import 'dart:io';
import 'scanner.dart';
import 'parsing/parsing-test.dart' as test;
import 'parsing/parsing-main.dart' as utama;

void main() {
  print("==============================");
  print("== TUBES TBA TERMINAL BASED ==");
  print("==============================");

  while (true) {
    print('Silahkan Masukkan Nomor Yang Dibawah');
    print('1. Lexical Analyzer');
    print('2. Parsing Test');
    print('3. Parsing Main');
    print('0. Keluar');
    print('Masukkan Angka: ');
    String angka = stdin.readLineSync()!;

    if (angka == '1') {
      int i = 0;

      // Membaca teks input dari stdin dan menampilkannya di layar
      print('Teks Input:');
      String input = stdin.readLineSync()!;

      // Menampilkan token-token yang ditemukan dan menampilkannya di layar
      print('Hasil:');
      while (i < input.length) {
        // Mendapatkan list yang berisi token dan indeks huruf berikutnya
        List<String> result = getToken(input, i);
        // Menampilkan token
        print(result[0]);
        // Mengubah nilai i dengan indeks huruf berikutnya
        i = int.parse(result[1]);
      }
    } else if (angka == '2') {
      print('Teks Input: ');
      String symbols = stdin.readLineSync()!;
      print(test.checkPDA(symbols)); //True
    } else if (angka == '3') {
      print('Teks Input: ');
      String symbols = stdin.readLineSync()!;
      print(utama.checkPDA(symbols.split(' '))); //True
    } else if (angka == '0') {
      break;
    }
  }
}
