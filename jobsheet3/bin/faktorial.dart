import 'dart:io';

void main() {
  List<Map<String, dynamic>> riwayat = [];

  while (true) {
    print("\n=== MENU UTAMA ===");
    print("1. Hitung Faktorial");
    print("2. Hitung Formasi");
    print("3. Out");
    stdout.write("Pilih menu (1/2/3): ");
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

          int hasil = 1;
          for (int i = 1; i <= n; i++) {
            hasil *= i;
          }

          riwayat.add({"n": n, "hasil": hasil});
          print("Faktorial dari $n adalah $hasil");

          print("\n=== Riwayat Faktorial ===");
          for (var data in riwayat) {
            print("${data['n']}! = ${data['hasil']}");
          }
        } catch (e) {
          print("Input tidak valid, harap masukkan angka bulat.");
        }
      }
    } else if (pilihan == "2") {
      while (true) {
        stdout.write("\nMasukkan jumlah anggota (atau ketik 'M' untuk kembali ke menu utama): ");
        String? input = stdin.readLineSync();

        if (input!.toUpperCase() == "M") break;

        try {
          int n = int.parse(input);
          if (n < 0) {
            print("Jumlah anggota tidak boleh negatif.");
            continue;
          }

          /// Proses perhitungan formasi
          int hasil = 1;
          String proses = "";
          for (int i = n; i >= 1; i--) {
            hasil *= i;
            proses += (i == 1) ? "$i" : "$i x ";
          }

          /// Tampilkan detail langkah perhitungan
          print("Banyak formasi adalah $proses = $hasil");
        } catch (e) {
          print("Input tidak valid, harap masukkan angka bulat.");
        }
      }

    } else if (pilihan == "3") {
      print("\n=== Program selesai ===");
      break;
    } else {
      print("Pilihan tidak valid. Silakan coba lagi.");
    }
  }
}
