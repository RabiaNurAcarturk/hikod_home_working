/*
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );




  import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Firebase nesnesi oluşturduk
  FirebaseFirestore firebaseObje=FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    //koleksiyona ulaşmak (referans yoluyla)
    CollectionReference sarkilarKoleksiyonu=firebaseObje.collection('Sarkilar');
    //Dökümana ulaşmak (Referans yoluyla)
DocumentReference sarkilar1Dokumani=sarkilarKoleksiyonu.doc('Sarki1');

Future<String> veriGetir() async {
  var response= await sarkilar1Dokumani.get();
  var result=response.data();
  print(result); //ekrana gelen veriyi bastır
  return result.toString();
}

    Future<String?> sarkiAdinigetir() async {
      try {
        var response = await sarkilar1Dokumani.get();
        if (response.exists) {
          var map=response.data() as Map<String,dynamic>;
          if(map!=null && map.containsKey('sarkiAd')) {
            String sarkiAdi = map['sarkiAd'].toString();
            print(sarkiAdi);
          }
        }
        else {
          return null;
        }
      }

      catch (e) {
        print(e);
      }
    }

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Firebase Örneği'),centerTitle: true,),
      body:
       Center(

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Veri!'),
            OutlinedButton(onPressed: sarkiAdinigetir
                , child: Text('Veri Getir')),
            OutlinedButton(onPressed: (){}, child: Text('Veri Ekle')),
            OutlinedButton(onPressed: (){}, child: Text('Veri Sil')),
          ],
               ),
       ),
    );
  }
}



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Firebase nesnesi oluşturduk
  FirebaseFirestore firebaseObje=FirebaseFirestore.instance;
  String veri=' ';
  int sayi=3;

  @override
  Widget build(BuildContext context) {

    //koleksiyona ulaşmak (referans yoluyla)
    CollectionReference sarkilarKoleksiyonu=firebaseObje.collection('Sarkilar');
    //Dökümana ulaşmak (Referans yoluyla)
    DocumentReference sarkilar1Dokumani=sarkilarKoleksiyonu.doc('Sarki2');

Future<String> veriGetir() async {
  var response= await sarkilar1Dokumani.get();
  var result=response.data();
  print(result); //ekrana gelen veriyi bastır
  return result.toString();
}

    Future<String?> sarkiAdinigetir() async {
      try {
        var response = await sarkilar1Dokumani.get();
        if (response.exists) {
          var map=response.data() as Map<String,dynamic>;
          if(map!=null && map.containsKey('sarkiAd')) {
            String sarkiAdi = map['sarkiAd'].toString();
            print(sarkiAdi);
            setState(() {
              veri=sarkiAdi;
            });
          }
        }
        else {
          return null;
        }
      }




      catch (e) {
        print(e);
      }
    }
    Future<void> veriEkle() async {

      Map<String,dynamic> yeniSarki={
        'sarkiAd':'Sopa',
        'Sarkici':'Hande Yener',
      };
      await sarkilarKoleksiyonu.doc('Sarki${sayi++}').set(yeniSarki);
    };
Future<void> ayniveriEkle() async {

      Map<String,dynamic> yeniSarki={
        'sarkiAd':'Sopa',
        'Sarkici':'Hande Yener',
        'sarkiTuru':'Pop'
      };
      await sarkilarKoleksiyonu.doc('Sarki2').set(yeniSarki);
    };

Future<void> veriSil()async{
  await sarkilar1Dokumani.delete();

}
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Firebase Örneği'),centerTitle: true,),
      body:
       Center(

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(veri),
            OutlinedButton(onPressed: sarkiAdinigetir
                , child: Text('Veri Getir')),
            OutlinedButton(onPressed: veriEkle, child: Text('Veri Ekle')),
            OutlinedButton(onPressed: ayniveriEkle, child: Text('aynı isimle veri Ekle')),
            OutlinedButton(onPressed: veriSil, child: Text('Veri Sil')),
          ],
               ),
       ),
    );
  }
}


 */