class Lingkaran {
  late double _ruas;

  void set ruas(double value) {
    _ruas = value < 0 ? -value : value;
  }

  double get ruas => _ruas;

  double hitungLuas() {
    return 3.14 * _ruas * _ruas;
  }
}
