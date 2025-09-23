import 'dart:io';

void main() {
  /// List untuk menyimpan riwayat faktorial
  List<Map<String, dynamic>> riwayat = [];

  while (true) {
    print("\n=== MENU UTAMA ===");
    print("1. Hitung Faktorial");
    print("2. Out");
    stdout.write("Pilih menu (1/2): ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == "1") {
      while (true) {
        stdout.write("\nMasukkan bilangan bulat positif (atau ketik 'M' untuk kembali ke menu utama): ");
        String? input = stdin.readLineSync();

        if (input!.toUpperCase() == "M") break;

        try {
          int n = int.parse(input);

          if (n < 0) {
            print("Tidak bisa menghitung faktorial dari bilangan negatif.");
            continue;
          }

          /// Perhitungan faktorial
          int hasil = 1;
          for (int i = 1; i <= n; i++) {
            hasil *= i;
          }

          /// Simpan hasil ke riwayat
          riwayat.add({"n": n, "hasil": hasil});

          /// Tampilkan hasil faktorial
          print("Faktorial dari $n adalah $hasil");

          /// Tampilkan seluruh riwayat faktorial
          print("\n=== Riwayat Faktorial ===");
          for (var data in riwayat) {
            print("${data['n']}! = ${data['hasil']}");
          }
        } catch (e) {
          print("Input tidak valid, harap masukkan angka bulat.");
        }
      }
    } else if (pilihan == "2") {
      print("\n=== Program selesai ===");
      break;
    } else {
      print("Pilihan tidak valid. Silakan coba lagi.");
    }
  }
}
