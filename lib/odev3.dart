/*Öğrenme Raporu
Inharitance (Kalıtım)

Bir class'ın başka bir class'ın bütün özelliklerini almasıdır. Yani bir class'ın başka bir class'tan türemesidir.

Extends kelimesiyle yapılır.

Bir class birden fazla class'tan türeyemez.

Class Hayvan {                          class Kopek extends Hayvan {

SesCikar()

}                                                       }

Override

Base Class'taki bazı fonksiyonların Kalıtım'la türettiğimiz class'ın içinde de aynı fonksiyonu tekrar aynı isim ve argümanlarla tanımlamak yalnızca  fonksiyonun içini (body'sini) değiştirmek override (ezmek)'tir.



Böyle fonksiyonların başına @override annotation'u yazılabilir.

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

import 'package:classdeneme/Bebek.dart';
import 'package:flutter/material.dart';

import 'Insan.dart';

void main() {
var insan1=Insan();
var bebek1=Bebek();

insan1.Uyu();
bebek1.Uyu();

}

Abstract class

Extends kelimesiyle yapılır.



Sadece bir sınıftan extends alınabilir.

abstract class Printer{
void printDocument();
}


class A extends Printer{
@override
void printDocument() {
print('Abstract class');
}


}


Interface

Alt sınıflarda doldurulmak zorunda olduğun taslaklardır.



Implements kelimesiyle class'a bağlanır.



Bir class'a birden fazla Interface bağlanabilir.

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

Composition

Veritabanındaki inner join'lere benzetebilirsiniz.

Bir class'tan başka bir class'a ulaşabilmeyi sağlar.

Upcasting / Downcasting
Kalıtım varken base class'ın tip olarak derivateive class'a dönüşümüne DownCasting,
Var insan1=Insan();

Var Bebek= insan1 as Bebek;

Kalıtım varken derivative class'ın tipinin base class'a dönüşümüne UpCasting denir.

Var bebek1 Bebek();

Insan insan1=bebek1;

Statik Değişken ve metodlar

Normalde bir class'ın method veya değişkenlerine erişirken nesne (obje) oluşturmak zorundayız. Ancak static Method ve variable'larla o metodun ve variable'ın başına static yazdığımız method ve variable'larına o nesne oluşturmadan ulaşabiliyoruz.



Öğrenme Raporu
- Bu derste MaterialApp, Scaffold, Text, SafeArea, Container, AppBar, Icon Widget'ları ve propertyleri işlenerek kodlar yazıldı.

-

Ders çıktıları şu şekildedir:

Derste Yazılan Kodlar
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
runApp(IlkUygulamam());
}

class IlkUygulamam extends StatefulWidget {
const IlkUygulamam({super.key});

@override
State<IlkUygulamam> createState() => _IlkUygulamamState();
}

class _IlkUygulamamState extends State<IlkUygulamam> {
TextEditingController _controller=TextEditingController();
var _value;
double a=10.0;
bool? isChecked=false;
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
shadowColor: Colors.black,
titleSpacing: 25,
backgroundColor: Colors.deepPurpleAccent,
title: Text('İlk Uygulamam'),
actions: [
OutlinedButton.icon(
onPressed: () {},
label: Text('Beyza Y'),
icon: Icon(Icons.settings),
)
],
),
body: Column
(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [Expanded(child: SizedBox(height:MediaQuery.of(context).size.height*0.5,width: MediaQuery.of(context).size.width*1,   child: Image.network('https://fotolifeakademi.com/uploads/2020/04/manzara-fotografi-cekmek.jpg'))),
Container(
height: MediaQuery.of(context).size.height * 0.2,
width: MediaQuery.of(context).size.width*0.4,
alignment: Alignment.bottomRight,
decoration: BoxDecoration(color: Colors.amber,
shape: BoxShape.rectangle,
borderRadius: BorderRadius.circular(20),border:  Border(
top:BorderSide(width: 15,color: Colors.black54 ),
),
),
),
Text('${_controller.text}'),
TextField(
autofocus: true,
onChanged: (String val)=> _value=val,
controller: _controller,
minLines: 1,
maxLines: 3,
decoration: InputDecoration(
labelText: 'asdsad',
hintText: 'asdasdasd',
icon: Icon(
Icons.person
)
),
),

Checkbox(

activeColor: Colors.pink,
checkColor: Colors.green,
tristate: true,
value: isChecked, onChanged: (newBool){
setState(() {
isChecked=newBool;
});
}),
ListTile(
trailing:Icon(Icons.ice_skating) ,
subtitle: Text('adss'),
leading: Checkbox(
activeColor: Colors.pink,
checkColor: Colors.green,
tristate: true,
value: isChecked,
onChanged: (newBool) {
setState(() {
isChecked = newBool;
});
},
),
title: Text('Checkbox Etiketi'), // Checkbox'ın yanına yazı ekle
),
CheckboxListTile(
controlAffinity: ListTileControlAffinity.leading,
title:Text('sfdsdf') ,              value: isChecked, onChanged:(bool? newValue) {
setState(() {
isChecked = newValue;
});
},            ),
Slider(value: a, onChanged: ( neeSlider){
setState(() {
a=neeSlider;
});
},
min:0,
max:100,
divisions: 10,
label: a.round().toString(),),
OutlinedButton(

style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.green)  ),
onPressed: (){}, child: Text('dsfsdfsdf')),
ElevatedButton(onPressed: (){}, child: Text('dsfsdfsdf'),),
TextButton(onPressed: (){}, child: Text('dsfsdfsdf'))
],
),
),
);

}
}

 */