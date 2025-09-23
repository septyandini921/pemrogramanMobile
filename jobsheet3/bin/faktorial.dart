import 'dart:io';

void main() {
  while (true) {
    print("\n=== MENU UTAMA ===");
    print("1. Hitung Faktorial");
    print("2. Out");
    stdout.write("Pilih menu (1/2): ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == "1") {
      /// Perulangan dalam menu faktorial agar user bisa menghitung berulang kali
      while (true) {
        stdout.write("\nMasukkan bilangan bulat positif (atau ketik 'M' untuk kembali ke menu utama): ");
        String? input = stdin.readLineSync();

        /// Jika input adalah 'M' maka kembali ke menu utama
        if (input!.toUpperCase() == "M") break;

        try {
          int n = int.parse(input);

          /// Validasi bilangan negatif
          if (n < 0) {
            print("Tidak bisa menghitung faktorial dari bilangan negatif.");
            continue;
          }

          /// Hitung faktorial dengan for loop
          int hasil = 1;
          for (int i = 1; i <= n; i++) {
            hasil *= i;
          }

          /// Tampilkan hasil faktorial
          print("Faktorial dari $n adalah $hasil");
        } catch (e) {
          /// Input bukan angka
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
