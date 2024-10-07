/* 
main.dart
import 'package:atolye_1/sayfa2.dart';
import 'package:atolye_1/sayfa3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //Hangi sayfadan başlayacağız
      routes: {
        '/': (context) => Sayfa1(),
        '/ikincisayfa': (context) =>
            Sayfa2(), //sayfa2'ye ikincisayfa ismini kullanarak geçiş yapmak.
        '/ucuncusayfa': (context) => Sayfa3()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});

  @override
  Widget build(BuildContext context) {
    bool? ischecked = false;
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('1.Sayfa'),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ikincisayfa',arguments:'Hi-Kod');
                  },
                  child: Text('2.Sayfaya git!')),
              OutlinedButton(
                  onPressed: () {
                    // Route sayfa3eGec =
                    // MaterialPageRoute(builder: (context) => Sayfa3());
                    //Navigator.push(context, sayfa3eGec);
                  },
                  child: Text('3.Sayfaya git!')),
            ],
          )),
    );
  }
}


/sayfa2.dart
import 'package:atolye_1/sayfa3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {

  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    final String yazi=ModalRoute.of(context)?.settings.arguments as String? ??'Beyza';
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2.Sayfa'),
          Text(yazi),
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

/sayfa3.dart

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

    --------------------
    sayfa3.dart


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa3 extends StatelessWidget {

  const Sayfa3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child:ListView(
          children:[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  children: [
                    CircleAvatar(

                      backgroundImage: AssetImage('assets/manzara.jpg'),
                    radius: 40,),
                    Text('John Doe',style: TextStyle(
                      fontWeight: FontWeight.w700
                    ),),
                    Text('asd@gmail.com')
                  ],
                )),
            ListTile(title: Text('Ana sayfa'),
            leading: Icon(Icons.home),
tileColor: Colors.deepOrangeAccent,
onTap:(){
          Navigator.pushNamed(context,'/')    ;
}
            )
          ],
        )
      ),
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

    //main.dart
import 'package:atolye_1/sayfa2.dart';
import 'package:atolye_1/sayfa3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //Hangi sayfadan başlayacağız
      routes: {
        '/': (context) => Sayfa1(),
        '/ikincisayfa': (context) =>
            Sayfa2(), //sayfa2'ye ikincisayfa ismini kullanarak geçiş yapmak.
        '/ucuncusayfa': (context) => Sayfa3()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});

  @override
  Widget build(BuildContext context) {
    bool? ischecked = false;
    return Scaffold(
      drawer:Drawer(
          child:ListView(
            children:[
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Column(
                    children: [
                      CircleAvatar(

                        backgroundImage: AssetImage('assets/manzara.jpg'),
                        radius: 40,),
                      Text('John Doe',style: TextStyle(
                          fontWeight: FontWeight.w700
                      ),),
                      Text('asd@gmail.com')
                    ],
                  )),
              ListTile(title: Text('Ana sayfa'),
                  leading: Icon(Icons.home),
                  tileColor: Colors.deepOrangeAccent,
                  onTap:(){
                    Navigator.pushNamed(context,'/ikincisayfa')    ;
                  }
              )
            ],
          )
      ),
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('1.Sayfa'),
          OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ikincisayfa',arguments:'Hi-Kod');
              },
              child: Text('2.Sayfaya git!')),
          OutlinedButton(
              onPressed: () {
               // Route sayfa3eGec =
                   // MaterialPageRoute(builder: (context) => Sayfa3());
                //Navigator.push(context, sayfa3eGec);
              },
              child: Text('3.Sayfaya git!')),
        ],
      )),
    );
  }
}



//sayfa2.dart
import 'package:atolye_1/sayfa3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {

  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    final String yazi=ModalRoute.of(context)?.settings.arguments as String? ??'Beyza';
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2.Sayfa'),
          Text(yazi),
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


/sayfa3.dart



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa3 extends StatelessWidget {

  const Sayfa3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child:ListView(
          children:[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  children: [
                    CircleAvatar(

                      backgroundImage: AssetImage('assets/manzara.jpg'),
                    radius: 40,),
                    Text('John Doe',style: TextStyle(
                      fontWeight: FontWeight.w700
                    ),),
                    Text('asd@gmail.com')
                  ],
                )),
            ListTile(title: Text('Ana sayfa'),
            leading: Icon(Icons.home),
tileColor: Colors.deepOrangeAccent,
onTap:(){
          Navigator.pushNamed(context,'/')    ;
}
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: ListTile(title: Text('Ayarlar'),
              leading: Icon(Icons.settings),
              tileColor: Colors.white,
              onTap:(){
                        Navigator.pushNamed(context,'/')    ;
              }
              ),
            ),
          ],
        )
      ),
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

  //main.dart
import 'package:atolye_1/sayfa2.dart';
import 'package:atolye_1/sayfa3.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //Hangi sayfadan başlayacağız
      routes: {
        '/': (context) => Sayfa1(),
        '/ikincisayfa': (context) =>
            Sayfa2(), //sayfa2'ye ikincisayfa ismini kullanarak geçiş yapmak.
        '/ucuncusayfa': (context) => Sayfa3()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sayfa1 extends StatefulWidget {
  const Sayfa1({super.key});

  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  int _index = 0;
  List Screens = [HomePage(), Sayfa2(), Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeOut,
        color: Colors.red,
        backgroundColor: Colors.white60,
        animationDuration: Duration(milliseconds: 500),
        height: 60,
        buttonBackgroundColor: Colors.amberAccent,
        index: _index,
        onTap:(index){
          setState(() {
            _index=index;
          });
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.account_box_rounded),
          Icon(Icons.settings)
        ],
      ),
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(),
      body: Screens[_index]
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('1.Sayfa'),
        OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ikincisayfa',
                  arguments: 'Hi-Kod');
            },
            child: Text('2.Sayfaya git!')),
        OutlinedButton(
            onPressed: () {
              // Route sayfa3eGec =
              // MaterialPageRoute(builder: (context) => Sayfa3());
              //Navigator.push(context, sayfa3eGec);
            },
            child: Text('3.Sayfaya git!')),
      ],
    ));
  }
}



//sayfa2.dart
import 'package:atolye_1/sayfa3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {

  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    final String yazi=ModalRoute.of(context)?.settings.arguments as String? ??'Beyza';
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2.Sayfa'),
          Text(yazi),
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



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa3 extends StatelessWidget {

  const Sayfa3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child:ListView(
          children:[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  children: [
                    CircleAvatar(

                      backgroundImage: AssetImage('assets/manzara.jpg'),
                    radius: 40,),
                    Text('John Doe',style: TextStyle(
                      fontWeight: FontWeight.w700
                    ),),
                    Text('asd@gmail.com')
                  ],
                )),
            ListTile(title: Text('Ana sayfa'),
            leading: Icon(Icons.home),
tileColor: Colors.deepOrangeAccent,
onTap:(){
          Navigator.pushNamed(context,'/')    ;
}
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: ListTile(title: Text('Ayarlar'),
              leading: Icon(Icons.settings),
              tileColor: Colors.amberAccent,
              onTap:(){
                        Navigator.pushNamed(context,'/')    ;
              }
              ),
            ),
          ],
        )
      ),
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





patikadaki kodlar



Öğrenme Raporu
Navigation
Mobil uygulamaların büyük çoğunlupu birkaç sayfadan oluşur ve biz bu uygualamnın belirli ihtiyaçları doğrusunda sayfalar arasında routing dediğimiz gezme işlemini yapabiliriz. Bunun için bu atölyede bunu nasıl yapabileceğimizden bahsedeceğim.​

Navigation tipleri:

Navigator.push​

Navigator.pop​

Navigator.PushReplacement​

Navigator.popUntil​

Navigator.PushAndRemoveUntil​

Navigator.PushNamed

//main.dart

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





Öğrenme Raporu

Sayfalar arası veri aktarımı

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('1.Sayfa'),
        OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ikincisayfa',
                  arguments: 'Hi-Kod');
            },
            child: Text('2.Sayfaya git!')),
        OutlinedButton(
            onPressed: () {
              // Route sayfa3eGec =
              // MaterialPageRoute(builder: (context) => Sayfa3());
              //Navigator.push(context, sayfa3eGec);
            },
            child: Text('3.Sayfaya git!')),
      ],
    ));
  }
}
import 'package:atolye_1/sayfa3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {

  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    final String yazi=ModalRoute.of(context)?.settings.arguments as String? ??'Beyza';
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2.Sayfa'),
          Text(yazi),
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


Drawer Menü yapısı:

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa3 extends StatelessWidget {

  const Sayfa3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child:ListView(
          children:[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  children: [
                    CircleAvatar(

                      backgroundImage: AssetImage('assets/manzara.jpg'),
                    radius: 40,),
                    Text('John Doe',style: TextStyle(
                      fontWeight: FontWeight.w700
                    ),),
                    Text('asd@gmail.com')
                  ],
                )),
            ListTile(title: Text('Ana sayfa'),
            leading: Icon(Icons.home),
tileColor: Colors.deepOrangeAccent,
onTap:(){
          Navigator.pushNamed(context,'/')    ;
}
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: ListTile(title: Text('Ayarlar'),
              leading: Icon(Icons.settings),
              tileColor: Colors.amberAccent,
              onTap:(){
                        Navigator.pushNamed(context,'/')    ;
              }
              ),
            ),
          ],
        )
      ),
      backgroundColor: Colors.teal,

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

Curver Navigation Navbar:

import 'package:atolye_1/sayfa2.dart';
import 'package:atolye_1/sayfa3.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //Hangi sayfadan başlayacağız
      routes: {
        '/': (context) => Sayfa1(),
        '/ikincisayfa': (context) =>
            Sayfa2(), //sayfa2'ye ikincisayfa ismini kullanarak geçiş yapmak.
        '/ucuncusayfa': (context) => Sayfa3()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sayfa1 extends StatefulWidget {
  const Sayfa1({super.key});

  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  int _index = 0;
  List Screens = [HomePage(), Sayfa2(), Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeOut,
        color: Colors.red,
        backgroundColor: Colors.white60,
        animationDuration: Duration(milliseconds: 500),
        height: 60,
        buttonBackgroundColor: Colors.amberAccent,
        index: _index,
        onTap:(index){
          setState(() {
            _index=index;
          });
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.account_box_rounded),
          Icon(Icons.settings)
        ],
      ),
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(),
      body: Screens[_index]
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('1.Sayfa'),
        OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ikincisayfa',
                  arguments: 'Hi-Kod');
            },
            child: Text('2.Sayfaya git!')),
        OutlinedButton(
            onPressed: () {
              // Route sayfa3eGec =
              // MaterialPageRoute(builder: (context) => Sayfa3());
              //Navigator.push(context, sayfa3eGec);
            },
            child: Text('3.Sayfaya git!')),
      ],
    ));
  }
}  */