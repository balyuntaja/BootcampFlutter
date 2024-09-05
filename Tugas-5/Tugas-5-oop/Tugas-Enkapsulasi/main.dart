import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran lingkaran = Lingkaran();

  lingkaran.ruas = 2;

  double luas = lingkaran.hitungLuas();
  print('Luas lingkaran: $luas');
}
