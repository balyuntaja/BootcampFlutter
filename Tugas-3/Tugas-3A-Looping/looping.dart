// No. 1 Looping While 

// void main (){
//   var i = 2;
//   var x = 20;

//   print("Looping PERTAMA");
//   while(i <= 20) { 
//   print ("$i - I love coding"); 
//   i += 2; 
//   }

//   print("LOOPING KEDUA");
//   while (x >= 2) {
//   print("$x - I will become a mobile developer");
//   x -= 2;
//   }
// }


// No. 2 Looping menggunakan for
// void main(){
//  for(var angka = 1; angka <= 20; angka++) {
//   if (angka % 2 == 1) {
//     if (angka % 3 == 0) {
//       print("$angka - I love coding");      
//     } else {
//       print("$angka - Santai");
//     }    
//   } else {
//     print("$angka - berkualitas");
//   }
//  } 
// }

// 

void main() {
  int width = 8;
  int height = 4;

  for (int i = 0; i < height; i++) {
    for (int j = 0; j < width; j++) {
      print('#');
    }
    print('');
  }
}