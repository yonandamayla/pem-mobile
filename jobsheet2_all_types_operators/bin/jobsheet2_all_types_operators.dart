void main() {
  print('--- Kumpulan Studi Kasus Penerapan Operator di Dart ---\n');

  // Studi Kasus 1: Operator Aritmatika
  // Menghitung total belanjaan dari jumlah barang dan harga satuan.
  print('Kasus 1: Menghitung Total Belanja (Aritmatika)');
  int jumlahBarang = 5;
  double hargaSatuan = 15000.50;
  double totalHarga = jumlahBarang * hargaSatuan; // (*)
  print('   Anda membeli $jumlahBarang barang seharga Rp$hargaSatuan');
  print('   Total yang harus dibayar: Rp$totalHarga\n');

  // Studi Kasus 2: Operator Increment & Decrement
  // Menambah dan mengurangi jumlah item di keranjang belanja.
  print('Kasus 2: Mengubah Jumlah Item di Keranjang (Increment/Decrement)');
  int itemDiKeranjang = 3;
  print('   Jumlah item awal: $itemDiKeranjang');
  itemDiKeranjang++; // Menambah satu item
  print('   Setelah menambah satu item: $itemDiKeranjang');
  itemDiKeranjang--; // Mengurangi satu item
  print('   Setelah mengurangi satu item: $itemDiKeranjang\n');

  // Studi Kasus 3: Operator Relasional
  // Memeriksa apakah seorang siswa lulus berdasarkan nilai KKM.
  print('Kasus 3: Cek Kelulusan Siswa (Relasional)');
  int nilaiSiswa = 80;
  int kkm = 75;
  bool apakahLulus = nilaiSiswa >= kkm; // (>=)
  print('   Nilai siswa: $nilaiSiswa, KKM: $kkm');
  print('   Apakah siswa lulus? $apakahLulus\n');

  // Studi Kasus 4: Operator Logika
  // Memvalidasi apakah pengguna bisa login jika username DAN password benar.
  print('Kasus 4: Validasi Login Pengguna (Logika)');
  bool usernameBenar = true;
  bool passwordBenar = false;
  bool bisaLogin = usernameBenar && passwordBenar; // (&&)
  print('   Username benar: $usernameBenar, Password benar: $passwordBenar');
  print('   Bisa login? $bisaLogin\n');

  // Studi Kasus 5: Operator Penugasan
  // Mengakumulasi total poin dari beberapa ronde permainan.
  print('Kasus 5: Akumulasi Poin Game (Penugasan)');
  int totalPoin = 100;
  print('   Total poin awal: $totalPoin');
  totalPoin += 50; // Menambah 50 poin dari ronde 1
  print('   Setelah ronde 1 (+50): $totalPoin');
  totalPoin -= 20; // Mengurangi 20 poin karena hukuman
  print('   Setelah hukuman (-20): $totalPoin\n');
  
  // Studi Kasus 6: Operator Kondisional (Ternary)
  // Menentukan status toko "Buka" atau "Tutup" berdasarkan jam.
  print('Kasus 6: Menentukan Status Toko (Kondisional)');
  int jamSekarang = 21;
  String statusToko = (jamSekarang >= 9 && jamSekarang <= 20) ? 'Buka' : 'Tutup';
  print('   Jam sekarang: $jamSekarang:00');
  print('   Status toko: $statusToko\n');

  // Studi Kasus 7: Operator Null-aware
  // Menampilkan nama panggilan pengguna, atau "Tamu" jika tidak diatur.
  print('Kasus 7: Menampilkan Nama Panggilan (Null-aware)');
  String? namaPanggilan; // Nilainya null
  String namaTampil = namaPanggilan ?? 'Tamu'; // (??)
  print('   Nama panggilan yang diatur: $namaPanggilan');
  print('   Nama yang ditampilkan di aplikasi: $namaTampil\n');
  
  // Studi Kasus 8: Operator Type Test
  // Memeriksa tipe data dari sebuah variabel yang bisa berisi apa saja (dynamic).
  print('Kasus 8: Memeriksa Tipe Data Input (Type Test)');
  dynamic inputPengguna = 'Halo Dart';
  if (inputPengguna is String) { // (is)
    print('   Input "$inputPengguna" adalah sebuah String.');
    print('   Panjang karakternya adalah ${inputPengguna.length}.');
  } else if (inputPengguna is int) {
    print('   Input "$inputPengguna" adalah sebuah Integer.');
  }
}
