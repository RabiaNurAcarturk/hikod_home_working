void main() {
  //2.seçenek
  double uzunKenar = 4.76;
  double kisaKenar = 9.54;

  double alan = dikdortgenAlani(uzunKenar, kisaKenar);

  print("Dikdörtgenin alanı: $alan");
}

double dikdortgenAlani(double uzunKenar, double kisaKenar) {
return uzunKenar * kisaKenar;
}

//3.seçenek
void main() {
  int a = 5;
  int b = 3;

  int sonuc = carp(a, b);
  print("Sonuç: $sonuc");


int carp(int a, int b) {}

