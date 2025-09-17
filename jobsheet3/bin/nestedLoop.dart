main() {
   // Membuat pola segitiga
  for (int i = 15; i >= 1; i--) {
    String baris = '';  
    for (int j = 1; j <= i; j++) {
            baris += '* ';  
            }  
            print(baris);
          }// Output:// *// * *// * * *// * * * *// * * * * *
}