// Mengimpor library dart:io untuk menerima input dari pengguna
import 'dart:io';

void main() {
  // Inisialisasi saldo awal
  double balance = 1000.00;

  // Variabel untuk menyimpan pilihan pengguna
  String? choice;

  // Perulangan utama program, akan terus berjalan selama pilihan bukan '4' (Keluar)
  while (choice != '4') {
    // Menampilkan menu utama
    print('\n--- ATM Sederhana ---');
    print('1. Cek Saldo');
    print('2. Setor Tunai');
    print('3. Tarik Tunai');
    print('4. Keluar');
    stdout.write('Masukkan pilihan Anda (1-4): ');

    // Membaca input dari pengguna
    choice = stdin.readLineSync();

    // Percabangan untuk memproses pilihan pengguna
    if (choice == '1') {
      // Fitur Cek Saldo
      print('Saldo Anda saat ini adalah: \$${balance.toStringAsFixed(2)}');
    }else if (choice == '2') {
      // Fitur Setor Tunai
      stdout.write('Masukkan jumlah yang akan disetor: ');
      String? amountString = stdin.readLineSync();
      if (amountString != null && double.tryParse(amountString) != null) {
        double amount = double.parse(amountString);
        if (amount > 0) {
          balance += amount;
          print('Setor tunai berhasil. Saldo baru Anda: \$${balance.toStringAsFixed(2)}');
        } else {
          print('Jumlah setoran harus positif.');
        }
      } else {
        print('Input tidak valid.');
      }
    }
  }
}
