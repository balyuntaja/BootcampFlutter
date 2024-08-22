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

void main() {

  for (var deret = 0; deret < 10; deret += 2) {

    print('Iterasi dengan Increment counter 2: ' + deret.toString());

  }

  print('-------------------------------');

  for (var deret = 15; deret > 0; deret -= 3) {

    print('Iterasi dengan Decrement counter : ' + deret.toString());

  }

}