List<int> angka = [1, 2, 3, 4, 5];

hitungAngka(List<int> list) {
  for (var data in list) {
    if (data <= 1) {
      print(data *= 2);
    } else {
      print(data += 1);
    }
  }
}

void main() {
  hitungAngka(angka);
}
