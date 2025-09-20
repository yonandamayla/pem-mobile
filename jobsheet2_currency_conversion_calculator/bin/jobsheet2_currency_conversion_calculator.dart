import 'dart:io';

void main() {
  // Penerapan Tipe Data Non-Primitif: Map
  // Map digunakan untuk menyimpan kurs mata uang terhadap USD sebagai basis
  // Ini sesuai dengan materi tentang tipe data koleksi key-value 
  final Map<String, double> kurs = {
    'USD': 1.0,       // Dolar Amerika
    'IDR': 16250.0,   // Rupiah Indonesia
    'EUR': 0.92,      // Euro
    'JPY': 157.0,     // Yen Jepang
  };

  print('--- Kalkulator Konversi Mata Uang ---');
  print('Mata uang yang tersedia: ${kurs.keys.join(', ')}');

  // Input & Variabel
  stdout.write('Masukkan jumlah uang: ');
  double jumlah = double.parse(stdin.readLineSync()!);

  stdout.write('Dari mata uang (misal: IDR): ');
  String dariMataUang = stdin.readLineSync()!.toUpperCase();

  stdout.write('Ke mata uang (misal: USD): ');
  String keMataUang = stdin.readLineSync()!.toUpperCase();

  // Validasi & Perhitungan
  if (kurs.containsKey(dariMataUang) && kurs.containsKey(keMataUang)) {
    // Penerapan Operator Aritmatika
    // Konversi dulu jumlah uang ke basis USD
    double jumlahDalamUSD = jumlah / kurs[dariMataUang]!;
    // Konversi dari USD ke mata uang tujuan
    double hasilKonversi = jumlahDalamUSD * kurs[keMataUang]!;

    // Output dengan String Interpolation
    print('\nHasil Konversi:');
    print('$jumlah $dariMataUang = ${hasilKonversi.toStringAsFixed(2)} $keMataUang');
  } else {
    print('\nKode mata uang tidak valid.');
  }
}