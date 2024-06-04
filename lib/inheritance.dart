/*
class Insan{
late String ad;
late String soyad;
late int yas;

void konus(){
print('Ben bir insanım');
}
Insan(){
print('Insan constructor\'ı');
}
void Uyu(){
print('8 Saat uyurum.');
}
}

class Bebek extends Insan{
late int mamaSaati;

Bebek() {
print('Bebek constructor\'ı');
}

@override
void Uyu() {
print('12 saat uyurum.');
super.Uyu();
}
}


//interface class'ı
class Printer{
  void printDocument() {
    print('Abstract class');
  }
}


class A implements Printer{
  @override
  void printDocument() {
    print('a');
  }


  void main(){

  }


  class Insan{
  late String ad;
  late String soyad;
  late int yas;
  void konus(){
  print('Ben bir insanım');
  }

  Insan(){
  print('Insan constructor\'ı');
  }

  void Uyu(){
  print('8 Saat uyurum.');
  }
  }

  class Bebek extends Insan{
  static int mamaSaati=10;

  Bebek() {
  print('Bebek constructor\'ı');
  }

  @override
  void Uyu() {
  print('12 saat uyurum.');
  }

  }


  void main(){
  print(Bebek.mamaSaati);
  }
  import 'package:flutter/material.dart';

  void main() {
  runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return const Placeholder();
  }
  }

*/