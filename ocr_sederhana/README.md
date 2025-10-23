# OCR Sederhana

Aplikasi OCR (Optical Character Recognition) sederhana yang dibangun dengan Flutter untuk memindai dan mengenali teks dari gambar menggunakan kamera perangkat.

## Fitur Utama

### 🔍 **Optical Character Recognition (OCR)**

- Memindai teks dari gambar secara real-time menggunakan kamera
- Menggunakan Google ML Kit Text Recognition untuk akurasi tinggi
- Support untuk teks dalam bahasa Latin

### 📱 **Antarmuka Pengguna**

- **Splash Screen**: Tampilan awal dengan loading 2 detik
- **Home Screen**: Menu utama dengan navigasi ListTile dan ikon kamera
- **Scan Screen**: Kamera preview dengan tombol capture yang stylish
- **Result Screen**: Menampilkan hasil OCR dengan teks yang dapat dipilih

### 🎵 **Text-to-Speech (TTS)**

- Fitur membaca teks hasil OCR dengan suara
- Support bahasa Indonesia (id-ID)
- Kontrol kecepatan dan pitch yang optimal
- Akses mudah melalui tombol speaker di AppBar

### 🎨 **UI/UX Enhancements**

- **Custom Loading Screen**: Background gelap dengan loading indicator kuning
- **Error Handling**: Pesan error yang user-friendly dalam bahasa Indonesia
- **Material Design**: Menggunakan komponen Material Design yang konsisten
- **Responsive Layout**: Tampilan yang adaptif untuk berbagai ukuran layar

## Teknologi yang Digunakan

- **Flutter SDK**: Framework utama untuk pengembangan cross-platform
- **Google ML Kit Text Recognition**: Engine OCR untuk pengenalan teks
- **Camera Plugin**: Akses dan kontrol kamera perangkat
- **Flutter TTS**: Text-to-Speech functionality
- **Path Provider**: Manajemen file system

## Dependensi

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_mlkit_text_recognition: ^0.15.0
  camera: ^0.10.6
  path_provider: ^2.1.2
  path: ^1.8.3
  flutter_tts: ^4.0.2
  cupertino_icons: ^1.0.8
```

## Alur Aplikasi

1. **Splash Screen** → Menampilkan loading selama 2 detik
2. **Home Screen** → Pilih "Mulai Pindai Teks Baru" untuk mulai scanning
3. **Scan Screen** → Arahkan kamera ke teks yang ingin dipindai, tekan "Ambil Foto & Scan"
4. **Processing** → Aplikasi memproses gambar dengan OCR (menampilkan loading custom)
5. **Result Screen** → Menampilkan hasil teks yang dipindai dengan opsi:
   - Teks dapat dipilih dan dicopy
   - Tombol speaker untuk mendengarkan teks (TTS)
   - Tombol home untuk kembali ke menu utama

## Output/Hasil Aplikasi

### 📊 **Hasil OCR**

- **Input**: Gambar dari kamera yang berisi teks
- **Output**: Teks digital yang dapat dipilih, dicopy, dan didengarkan
- **Akurasi**: Tinggi untuk teks yang jelas dan pencahayaan yang baik
- **Format**: Plain text dengan preservation line breaks

### 🎯 **Kualitas Pemindaian**

- Optimal untuk teks dengan kontras tinggi (hitam di atas putih)
- Mendukung berbagai jenis font dan ukuran teks
- Dapat mengenali teks dari dokumen, papan nama, poster, dll
- Performa terbaik dengan pencahayaan yang cukup

### 🔊 **Text-to-Speech Output**

- **Bahasa**: Indonesia (id-ID)
- **Kualitas Suara**: Natural dan jelas
- **Kecepatan**: 0.5x (optimal untuk pemahaman)
- **Pitch**: 1.0 (standar)

## Persyaratan Sistem

- **Android**: Minimum SDK 21 (Android 5.0)
- **iOS**: iOS 10.0 atau lebih tinggi
- **Permissions**: Camera access required
- **Storage**: ~50MB untuk instalasi

## Cara Menjalankan

1. Clone repository ini
2. Jalankan `flutter pub get` untuk menginstall dependensi
3. Pastikan perangkat/emulator sudah terhubung
4. Jalankan `flutter run`

## Kontribusi

Proyek ini dikembangkan sebagai bagian dari tugas UTS Pemrograman Mobile dengan implementasi:

- **Soal 1** (30 poin): Modifikasi navigasi dengan ListTile dan FloatingActionButton
- **Soal 2** (40 poin): Custom loading screen dan error handling
- **Soal 3** (30 poin): Implementasi Text-to-Speech functionality

## Developer

**Nama**: Yonanda Mayla Rusdiaty  
**Kelas**: SIB 3D  
**NIM**: 2341760184
