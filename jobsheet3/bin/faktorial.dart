import 'dart:io';

void main() {
  while (true) {
    /// Tampilkan menu utama
    print("\n=== MENU UTAMA ===");
    print("1. Hitung Faktorial");
    print("2. Out");
    stdout.write("Pilih menu (1/2): ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == "1") {
      /// Menu hitung faktorial
      stdout.write("Masukkan bilangan bulat positif: ");
      String? input = stdin.readLineSync();

      try {
        int n = int.parse(input!);

        if (n < 0) {
          /// Validasi bilangan negatif
          print("Tidak bisa menghitung faktorial dari bilangan negatif.");
          continue;
        }
        /// Hitung faktorial
        int hasil = 1;
        for (int i = 1; i <= n; i++) {
          hasil *= i;
        }

        /// Tampilkan hasil faktorial
        print("Faktorial dari $n adalah $hasil");
      } catch (e) {
        /// Error handling jika input bukan angka
        print("Input tidak valid, harap masukkan angka bulat.");
      }

    } else if (pilihan == "2") {
      /// Keluar dari program
      print("\n=== Program selesai ===");
      break;
    } else {
      print("Pilihan tidak valid. Silakan coba lagi.");
    }
  }
}
