// 1. Ternary operator

// import 'dart:io';
// void main() {
//   print("Apakah Anda mau menginstall aplikasi (Y/T): ");
//   String? inputText = stdin.readLineSync()?.toUpperCase();

//     if (inputText == 'Y') {
//       print('anda akan menginstall aplikasi dart');
//     // Tambahkan kode untuk proses instalasi di sini
//   } else if (inputText == 'T') {
//       print('aborted');    
//   } else {
//     print('Input tidak valid. Silakan pilih Y/T');
//   }
// }

// 2. If-else if dan else

// import 'dart:io';
// void main() {
//   print("Masukkan nama anda: ");
//   String? inputNama = stdin.readLineSync();

//   print("Masukkan peran anda: ");
//   String? inputPeran = stdin.readLineSync()?.toLowerCase();
  
  
//   if (inputNama == null || inputNama.isEmpty) {
//     print("Nama harus diisi!");
//   } else if (inputPeran == null || inputPeran.isEmpty) {
//     print("Halo $inputNama, Pilih peranmu untuk memulai game!");
//   } else {
//     print("Selamat datang di Dunia Werewolf, $inputNama");
// }
//   if (inputPeran == 'penyihir') {
//   print("Halo Penyihir $inputNama, kamu dapat melihat siapa yang menjadi werewolf!");
// } else if (inputPeran == 'guard') {
//   print("Halo Guard $inputNama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
// } else if (inputPeran == 'werewolf') {
//   print("Halo Werewolf $inputNama, Kamu akan memakan mangsa setiap malam!");
// } else {
//   print("Peran tidak valid. Silakan pilih Penyihir, Guard, atau Werewolf.");
// }

// }

// 3. Switch case

// import 'dart:io';
// void main() { 
  
//   print("Masukkan nama hari dan aku akan memberikan kalian quotes yang sangat berguna! ");
//   String? hari = stdin.readLineSync()?.toLowerCase();

// switch(hari) {
//   case 'senin':
//     { print('Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.'); break; }
//   case 'selasa':
//     { print('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.'); break; }
//   case 'rabu':
//     { print('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.'); break; }
//   case 'kamis':
//     { print('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.'); break; }
//   case 'jumat':
//     { print('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.'); break; }
//   case 'sabtu':
//     { print('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.'); break; }
//   case 'minggu':
//     { print('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.'); break; }
//   default:  
//   { print('Tidak ada quotes untuk hari ini'); }}
// }


// 4. Switch case

// void main() {
//   var tanggal = 21;
//   var bulan = 5;
//   var tahun = 1945;
  
//   String namaBulan;


// switch(bulan) {
//   case 1:
//      namaBulan = 'Januari'; break;
//   case 2:
//      namaBulan = 'Februari'; break;
//   case 3:
//      namaBulan = 'Maret'; break;
//   case 4:
//      namaBulan = 'April'; break;
//   case 5:
//      namaBulan = 'Mei'; break;
//   case 6:
//      namaBulan = 'Juni'; break;
//   case 7:
//      namaBulan = 'Juli'; break;
//   case 8:
//      namaBulan = 'Agustus'; break;
//   case 9:
//      namaBulan = 'September'; break;
//   case 10:
//      namaBulan = 'Oktober'; break;
//   case 11:
//      namaBulan = 'November'; break;
//   case 12:
//      namaBulan = 'Desember'; break;
//   default: 
//      namaBulan = 'nama bulan tidak diketahui';
//      }

//   String tanggalFormat = '$tanggal $namaBulan $tahun';

//   print(tanggalFormat);
// }
