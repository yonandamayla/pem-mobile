import 'dart:io';

void main() {
  // Penerapan Variabel & Tipe Data
  // double digunakan karena berat dan tinggi bisa jadi bilangan desimal
  double? berat, tinggi;
  
  print('--- Kalkulator Body Mass Index (BMI) ---');

  // Input Pengguna
  stdout.write('Masukkan berat badan Anda (kg): ');
  // Membaca input, lalu mengonversinya ke double
  // Tanda '??' adalah operator null-aware, memberikan nilai default jika input kosong (0)
  berat = double.tryParse(stdin.readLineSync() ?? '0');

  stdout.write('Masukkan tinggi badan Anda (cm): '); // Diubah ke cm agar lebih jelas
  tinggi = double.tryParse(stdin.readLineSync() ?? '0');
  
  // Memastikan input valid
  if (berat != null && tinggi != null && berat > 0 && tinggi > 0) {
    // Konversi tinggi dari CM ke Meter
    // Tambahkan baris ini untuk mengubah unit tinggi
    tinggi = tinggi / 100;

    // Penerapan Operator Aritmatika
    // Rumus BMI = berat / (tinggi * tinggi)
    double bmi = berat / (tinggi * tinggi);

    // Penerapan String Interpolation untuk Output
    // Menampilkan hasil BMI dengan 2 angka di belakang koma
    print('\nBMI Anda adalah: ${bmi.toStringAsFixed(2)}');

    String kategori;
    // Penerapan Operator Relasional & Logika
    // Menentukan kategori BMI menggunakan struktur if-else
    if (bmi < 18.5) {
      kategori = 'Berat badan kurang';
    } else if (bmi >= 18.5 && bmi < 25) {
      kategori = 'Berat badan normal';
    } else if (bmi >= 25 && bmi < 30) {
      kategori = 'Berat badan berlebih';
    } else {
      kategori = 'Obesitas';
    }
    print('Kategori: $kategori');
  } else {
    print('Input tidak valid. Harap masukkan angka yang benar untuk berat dan tinggi.');
  }
}
