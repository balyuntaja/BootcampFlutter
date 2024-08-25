class Lingkaran {
  double jariJari;

  Lingkaran(this.jariJari);

  double hitungLuas() {
    const phi = 3.14;
    return phi * jariJari * jariJari;
  }
}

void main(List<String> args) {
  Lingkaran lingkaran = Lingkaran(7);
  double luas = lingkaran.hitungLuas();
  print("Luas lingkaran: $luas");
}