/*
//main.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Sayfa1()
    );
  }
}

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('1.Sayfa'),
          OutlinedButton(onPressed: (){


          }, child: Text('2.Sayfaya git!')),
          OutlinedButton(onPressed: (){

          }, child: Text('3.Sayfaya git!'))
        ],
      )),
    );
  }
}



//sayfa2
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {
  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2.Sayfa'),
          OutlinedButton(onPressed: (){}, child: Text('3.Sayfaya geç'))
        ],
      )),
    );
  }
}

//sayfa3

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('3.Sayfa'),
          OutlinedButton(onPressed: (){


          }, child: Text('1.Sayfaya git!')),
          OutlinedButton(onPressed: (){

          }, child: Text('2.Sayfaya git!'))
        ],
      )),
    );
  }
}

/*//main.dart

import 'package:atolye_1/sayfa2.dart';
import 'package:atolye_1/sayfa3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //Hangi sayfadan başlayacağız
      routes: {
        '/':(context)=>Sayfa1(),
        '/ikincisayfa':(context)=>Sayfa2(), //sayfa2'ye ikincisayfa ismini kullanarak geçiş yapmak.
        '/ucuncusayfa':(context)=>Sayfa3()
      },
debugShowCheckedModeBanner: false,

    );
  }
}

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('1.Sayfa'),
          OutlinedButton(onPressed: (){
Navigator.pushNamed(context,'/ikincisayfa');
          }, child: Text('2.Sayfaya git!')),
          OutlinedButton(onPressed: (){
Route sayfa3eGec=MaterialPageRoute(builder: (context)=>Sayfa3());
Navigator.push(context, sayfa3eGec);
          }, child: Text('3.Sayfaya git!'))
        ],
      )),
    );
  }
}




//Sayfa2.dart
import 'package:atolye_1/sayfa3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {
  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2.Sayfa'),
          OutlinedButton(onPressed: (){
            Route sayfa3eGec=MaterialPageRoute(builder: (context)=>Sayfa3());
Navigator.push(context,sayfa3eGec);
          }, child: Text('3.Sayfaya geç')),
          OutlinedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('1.sayfaya geri dön'))
        ],
      )),
    );
  }
}



//sayfa3
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa3 extends StatelessWidget {
  const Sayfa3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('3.Sayfa'),
          OutlinedButton(onPressed: (){
Navigator.popUntil(context, (route)=>route.isFirst);

          }, child: Text('1.Sayfaya git!')),
          OutlinedButton(onPressed: (){
Navigator.pop(context);
          }, child: Text('2.Sayfaya git!'))
        ],
      )),
    );
  }
}
*/
 */