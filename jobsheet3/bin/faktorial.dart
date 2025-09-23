import 'dart:io';

void main() {
  /// List untuk menyimpan riwayat perhitungan faktorial
  List<Map<String, dynamic>> riwayat = [];

  /// Perulangan utama program agar menu terus muncul
  while (true) {
    /// Menampilkan menu utama
    print("\n=== MENU UTAMA ===");
    print("1. Hitung Faktorial");
    print("2. Hitung Formasi");
    print("3. Out");
    stdout.write("Pilih menu (1/2/3): ");
    String? pilihan = stdin.readLineSync();

    /// Menu Hitung Faktorial
    if (pilihan == "1") {
      while (true) {
        /// Input bilangan untuk faktorial
        stdout.write("\nMasukkan bilangan bulat positif (atau ketik 'M' untuk kembali ke menu utama): ");
        String? input = stdin.readLineSync();

        /// Jika input = 'M', kembali ke menu utama
        if (input!.toUpperCase() == "M") break;

        try {
          /// Parsing input ke integer
          int n = int.parse(input);

          /// Validasi: faktorial tidak bisa untuk bilangan negatif
          if (n < 0) {
            print("Tidak bisa menghitung faktorial dari bilangan negatif.");
            continue;
          }

          /// Hitung faktorial dengan perulangan for
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
          /// Error handling jika input bukan angka
          print("Input tidak valid, harap masukkan angka bulat.");
        }
      }

    /// Menu Hitung Formasi
    } else if (pilihan == "2") {
      while (true) {
        /// Input jumlah anggota untuk hitung formasi
        stdout.write("\nMasukkan jumlah anggota (atau ketik 'M' untuk kembali ke menu utama): ");
        String? input = stdin.readLineSync();

        /// Jika input = 'M', kembali ke menu utama
        if (input!.toUpperCase() == "M") break;

        try {
          /// Parsing input ke integer
          int n = int.parse(input);

          /// Validasi: jumlah anggota tidak boleh negatif
          if (n < 0) {
            print("Jumlah anggota tidak boleh negatif.");
            continue;
          }

          /// Proses perhitungan formasi (n!)
          int hasil = 1;
          String proses = "";
          for (int i = n; i >= 1; i--) {
            hasil *= i;
            /// Menyusun string proses perhitungan (contoh: 3 x 2 x 1)
            proses += (i == 1) ? "$i" : "$i x ";
          }

          /// Tampilkan detail proses dan hasil perhitungan formasi
          print("Banyak formasi adalah $proses = $hasil");
        } catch (e) {
          /// Error handling jika input bukan angka
          print("Input tidak valid, harap masukkan angka bulat.");
        }
      }

    /// Menu keluar dari program
    } else if (pilihan == "3") {
      print("\n=== Program selesai ===");
      break;

    /// Jika input menu tidak valid
    } else {
      print("Pilihan tidak valid. Silakan coba lagi.");
    }
  }
}
