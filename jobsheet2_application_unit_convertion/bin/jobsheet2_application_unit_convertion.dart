import 'dart:io';

void main() {
  // Penerapan Nested Map untuk Menyimpan Faktor Konversi
  // Key-value adalah kategori, nilainya adalah Map lain berisi unit dan faktornya.
  // Semua faktor dihitung relatif terhadap satu unit dasar per kategori (meter, kilogram, liter).
  final Map<String, Map<String, double>> faktorKonversi = {
    '1': { // Kategori Panjang
      '1': 1.0,      // Meter
      '2': 1000.0,   // Kilometer
      '3': 0.01,     // Sentimeter
      '4': 1609.34,  // Mil
      '5': 0.9144,   // Yard
    },
    '2': { // Kategori Massa
      '1': 1.0,      // Kilogram
      '2': 0.001,    // Gram
      '3': 1000.0,   // Ton
      '4': 0.453592, // Pound
      '5': 0.0283495,// Ons
    },
    '3': { // Kategori Suhu
      // Suhu memiliki rumus, bukan faktor, jadi ditangani khusus
    }
  };

  // Map untuk nama unit agar tampilan lebih user-friendly
  final Map<String, List<String>> namaUnit = {
    '1': ['Meter', 'Kilometer', 'Sentimeter', 'Mil', 'Yard'],
    '2': ['Kilogram', 'Gram', 'Ton', 'Pound', 'Ons'],
    '3': ['Celsius', 'Fahrenheit', 'Kelvin', 'Reamur'],
  };

  bool ulangi = true;
  while (ulangi) {
    // Menu Pemilihan Kategori
    print('\n--- Aplikasi Konversi Unit ---');
    print('Pilih kategori konversi:');
    print('1. Panjang');
    print('2. Massa');
    print('3. Suhu');
    print('4. Keluar');
    stdout.write('Pilihan Anda (1-4): ');
    String? pilihanKategori = stdin.readLineSync();

    if (pilihanKategori == '4') {
      ulangi = false;
      print('Terima kasih!');
      continue;
    }

    if (faktorKonversi.containsKey(pilihanKategori)) {
      // --- Menu Pemilihan Unit ---
      print('\nUnit yang tersedia untuk kategori ini:');
      for (var i = 0; i < namaUnit[pilihanKategori]!.length; i++) {
        print('${i + 1}. ${namaUnit[pilihanKategori]![i]}');
      }

      // Input Nilai dan Unit
      stdout.write('Masukkan nilai yang akan dikonversi: ');
      double nilai = double.parse(stdin.readLineSync()!);

      // --- Validasi Input (Hindari Nilai Negatif) ---
      if (pilihanKategori != '3' && nilai < 0) {
        print('Error: Nilai untuk kategori ini tidak boleh negatif.');
        continue;
      }

      stdout.write('Pilih unit asal (nomor): ');
      String unitAsal = stdin.readLineSync()!;

      stdout.write('Pilih unit tujuan (nomor): ');
      String unitTujuan = stdin.readLineSync()!;

      double hasil = 0;

      // Logika Konversi 
      if (pilihanKategori == '3') { // Logika khusus untuk Suhu
        hasil = konversiSuhu(nilai, unitAsal, unitTujuan);
      } else { // Logika umum untuk Panjang dan Massa
        // Ambil faktor konversi dari Map
        double faktorAsal = faktorKonversi[pilihanKategori]![unitAsal]!;
        double faktorTujuan = faktorKonversi[pilihanKategori]![unitTujuan]!;

        // Konversi nilai ke unit dasar, lalu ke unit tujuan
        double nilaiDasar = nilai * faktorAsal;
        hasil = nilaiDasar / faktorTujuan;
      }
      
      // Tampilan Hasil yang Rapi
      String namaUnitAsal = namaUnit[pilihanKategori]![int.parse(unitAsal) - 1];
      String namaUnitTujuan = namaUnit[pilihanKategori]![int.parse(unitTujuan) - 1];
      print('\nHASIL: $nilai $namaUnitAsal = ${hasil.toStringAsFixed(4)} $namaUnitTujuan');
    } else {
      print('Pilihan kategori tidak valid.');
    }
  }
}

// Fungsi terpisah untuk logika konversi suhu yang lebih kompleks
double konversiSuhu(double nilai, String dari, String ke) {
  // Konversi dulu semua ke Celsius sebagai basis
  double nilaiCelsius;
  switch (dari) {
    case '1': // Celsius
      nilaiCelsius = nilai;
      break;
    case '2': // Fahrenheit to Celsius
      nilaiCelsius = (nilai - 32) * 5 / 9;
      break;
    case '3': // Kelvin to Celsius
      nilaiCelsius = nilai - 273.15;
      break;
    case '4': // Reamur to Celsius
      nilaiCelsius = nilai * 5 / 4;
      break;
    default:
      return 0.0;
  }

  // Konversi dari Celsius ke unit tujuan
  switch (ke) {
    case '1': // to Celsius
      return nilaiCelsius;
    case '2': // to Fahrenheit
      return (nilaiCelsius * 9 / 5) + 32;
    case '3': // to Kelvin
      return nilaiCelsius + 273.15;
    case '4': // to Reamur
      return nilaiCelsius * 4 / 5;
    default:
      return 0.0;
  }
}