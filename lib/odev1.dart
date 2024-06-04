/*Öğrenme Raporu
Dart Yazılım dilinde:

1) Data Types (Veri Tipleri-String, int, double, bool) işlendi

2) Variable oluşturma yöntemleri tanıtıldı (Örn: String name = 'MyName'; )

3)Atölyecilerle birlikte variable bastırma çeşitleri ve alıştırmaları yapılıp ödevler verildi.

Variable tanımlama örnekleri

int yas= 15;

int yil=2014;

double notOrtalama= 87.50;

double Sicaklik= 27.0;

String isim= 'Beyza';

String ders='Matematik';

bool sinifdolumu= true;

bool Haftabirgunmu=false;



//Değer atamak zorunda değiliz:

Int yas;

Yas=25;


//var ve const farkı:

var a =10;

Const a=20;


const b=10

b=20;   //Const'a sonradan değer atayamazsın.



Sum örneği:

var a=10;

var b=20;

print('$a ve $b nin toplamı: ${a+b}');

Ödev-1
Kod Çalışması:
a. Kendiniz birer tane int, String, double, bool dynamic, char veri tiplerinde variable
tanımlayıp bu variable’ları konsola bastırınız.
b. a. kısmında tanımladığınız variable’lardan 3 tane seçerek o variable’ları
camelcase,snake_case ve PascalCase olarak tekrar tanımlayınız. Ve yine konsola
bastırınız.
c. Kendi adınızı, soyadınızı, yaşınızı reşit olup olmama durumunuzu (true,false) birer
variable’a atayıp ekrana bastıran print yazınız.

Cevap Anahtarı
void main() {
// a Kısmı
// int variable tanımlama
int sayiBirinci = 42;
print("int değişkeni: $sayiBirinci");

// String variable tanımlama
String metin = "Merhaba, dünya!";
print("String değişkeni: $metin");

// double variable tanımlama
double ornekOndalikliSayi = 3.14;
print("double değişkeni: $ornekOndalikliSayi");

// bool variable tanımlama
bool dogruMu = true;
print("bool değişkeni: $dogruMu");

// dynamic variable tanımlama (her türlü değer alabilir)
dynamic dinamikDeger = "Dart";
print("dynamic değişkeni: $dinamikDeger");

// char variable tanımlama (Dart'ta char tipi yok, String kullanılır)
String karakter = 'a';
print("char değişkeni: $karakter");

// b kısmı
// sayiBirinci'nin camelCase tanımlanması
var sayiBirinci = 42;
print("int değişkeni (camelCase): $sayiBirinci");

// dogruMu'nun snake_case tanımlanması
var dogru_mu = true;
print("bool değişkeni (snake_case): $dogru_mu");

// dinamikDeger'in PascalCase tanımlanması
var DinamikDegerPascal = "Dart";
print("dynamic değişkeni (PascalCase): $DinamikDegerPascal");

// c kısmı
String ad = 'Beyza';
String soyad = 'Yalvaç';
int yas = 20;
bool resitlik = true;

print('Merhaba, ben $ad $soyad. $yas yaşındayım. Reşitlik durumum: $resitlik');
}

 */
