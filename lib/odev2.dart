/*Öğrenme Raporu
Bu dersimizde:

- Diziler, Set, Map collection type'ları hakkında bilgi verildi. Örnekler verildi.

- Döngüler ve koşullu ifadeler anlatıldı. Örnekler verildi.
void main() {
  // Değişkenler
  int yil = 2014;
  double notOrtalama = 87.50;

  // Diziler
  List<String> gunler = ['Pazartesi', 'Salı', 'Çarşamba', 'Perşembe', 'Cuma'];

  // Salı'nın index'ini bulmak
  var a = gunler.indexOf('Salı');
  print('Salı\'nın indexi: $a');

  // Map
  Map<int, String> plakalar = {
    01: 'Adana',
    34: 'Istanbul',
    35: 'Izmir',
    46: 'Kahramanmaras'
  };

  // Map'i bastırmak
  print('Plakalar: $plakalar');

  // Set
  // Set oluşturma
  Set<String> ulkeler = {'Türkiye', 'ABD', 'Almanya', 'Fransa', 'Japonya'};

  // Set'in elemanlarına erişim
  print('Ülkeler: $ulkeler');

  // Koşullu ifadeler
  var sayi = 15;

  if (sayi % 2 == 0) {
    print('Bu sayı çift sayıdır.');
  } else if (sayi % 2 == 1) {
    print('Bu sayı tek sayıdır.');
  } else {
    print('Böyle bir sayı bulunamaz.');
  }

  // For Döngüsü
  List<int> sayilar = [5, 10, 15, 20, 25, 30];

  for (int i = 0; i < sayilar.length; i++) {
    print('${i}. index: ${sayilar[i]}');
  }

  // While döngüsü
  var i = 0;

  while (i < 5) {
    print('i\'nin şu anki değeri: $i');
    i++;
  }
}

-Dart fonksiyonlar tanıtımı ve fonksiyon örnekleri yapıldı.

-OOP'ye giriş yapıp gerçek hayattan örneklerle birlikte genel bir bakış açısı öğrenciye kazandırıldı.

-OOP'de class,object, constructor, inheritance, override, kavramları üzerinde duruldu.

konuları işlendi. Bu derste yazdığımız kodu aşağıda görebilirsiniz.
Fonksiyon örnekleri:

1- int toplama(int sayi1, int sayi2) {



  int toplam = sayi1 + sayi2;



  return toplam;



}





void main() {

  print(toplama(6,4));

}

List <String> diziyeElemanEkle(List <String> liste, String eleman){

  liste.add(eleman);

  return liste;

}





void main() {

  List<String> liste1=['Dikdörtgen','daire'];

  print(diziyeElemanEkle(liste1,'Ucgen'));

}

class Insan{​
late String ad;​
late String soyad;​
late int yas;​
​
void konus(){​
print('Ben bir insanım');​
}​
​
Insan(){​
print('Insan constructor\'ı');​
}

void Uyu(){
print('8 Saat uyurum.');
}
}

import 'Insan.dart';

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

Class kavramı​

Daha çok nesnelerin bir template'dir.​

Gerçek hayata baktığımızda karşılık olarak örnekleri vardır.​
​

Örneğin:​

Araba class'ı,​

Telefon class'ı vb.​

Object (Nesne) Kavramı

Class'lardan türeyen yapılardır. Birnevi kendi class'larının özelliklerini taşırlar.​

​

Örneğin:​

​
araba class'ından türeyen nesneler ->BMW, Mercedes, Toyota arabaları örnek verilebilir.​

Class içi instance variable'lar ve methodlar nelerdir?

Class'da tanımlanan variable'lardır.​

Class'ın özellikleri diyebiliriz.​

Örneğin araba class'ının instance variable'ları -> hız, beygir gücü, arabaTipi(sedan vb.)​
örnek gösterilebilir.​

Class ve objelerin tanımlanması


class Car{​

int yakit=100;​

int hiz=120;​

}  ​

​

void main() { ​

var araba1= new Car();​

var araba2= Car();​

} ​                                                                   Constructor Kavramı​

​Constructor, class'tan obje oluşturulduğu anda çalışan fonksiyondur.​

Costructor Class ismiyle aynı olmalıdır.​

Genelde Constructor'da default değerler ayarlanır.​
​

Örneğin araba class'ının constructor'ı:​

Araba(int speed,String arabaTipi){​

This.hiz=speed,​

This.arabaTip=arabaTipi​

}​

ödev
Double olarak uzunKenar ve kısaKenar değişkenlerini alıp Dikdörtgenin alanını bulan bir fonksiyon yazınız. Ve bu fonksiyonu 4.76 ve 9.54 değerleriyle çağırınız.

Aşağıda açıklanan fonksiyonları ve main fonksiyonunu yazarak tamamlayınız:

Fonksiyonun Amacı: Bir tam sayı a ve b parametrelerini alarak, a değerini 2^(b-1) ile çarpan bir fonksiyon yazınız.

Fonksiyon Tanımı:

int carp(int a, int b): Bu fonksiyon iki tam sayı parametre alacak.

Fonksiyon içinde int multiplyByTwo(int x) adlı bir iç fonksiyon tanımlanmalı. Bu iç fonksiyon, x değerini 2 ile çarparak döndürmelidir.

carp fonksiyonu, bir result değişkeni kullanarak a değerini başlatmalıdır.

result değeri, b-1 kez multiplyByTwo fonksiyonu kullanılarak iki ile çarpılmalıdır.

Döngü tamamlandıktan sonra result değeri geri döndürülmelidir.

Main Fonksiyonu:

main fonksiyonunu yazınız ve içinde carp fonksiyonunu a=5 ve b=3 parametreleriyle çağırarak sonucu ekrana yazdırınız.

Sonucun 20 olması beklenmektedir.



Girilen listeden girilen veriyi silen fonksiyon örneğini yazınız. (Cohorts’da ekleme metodunun örnegi var.)

Bir tane şekiller class’ı oluşturunuz ve 5 tane şekil object’i (objesi) tanımlayınız.

Aynı sonucu verdiği sürece tüm cevaplar doğrudur. Sadece daha anlaşılabilir olması adına bu şekilde bir cevap anahtarı oluşturuldu.

Dikdörtgenin Alanını Bulan Fonksiyon
double dikdortgenAlani(double uzunKenar, double kisaKenar) {
return uzunKenar * kisaKenar;
}
void main() {

double uzunKenar = 4.6;
double kisaKenar = 9.55;
double alan = dikdortgenAlani(uzunKenar, kisaKenar);
print('Dikdörtgenin alanı: $alan');

}

İç İçe fonksiyon Örneği
int carp(int a, int b) {
int multiplyByTwo(int x) {
return x * 2;
}

int result = a;
for (int i = 1; i < b; i++) {
result = multiplyByTwo(result);
}

return result;
}

void main() {

// carp fonksiyonu çağırılması - call
int a = 5;
int b = 3;
int sonuc = carp(a, b);
print('Sonuç: $sonuc');
}

Listeden Eleman Silen Fonksiyon
void listedenElemanSil(List<dynamic> liste, dynamic eleman) {
liste.remove(eleman);
}

void main() {
List<int> sayilar = [1, 2, 3, 4, 5];
print('Başlangıç listesi: $sayilar');
listedenElemanSil(sayilar, 3);
print('3 silindikten sonraki liste: $sayilar');
}
*/