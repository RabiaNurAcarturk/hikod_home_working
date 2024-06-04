import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İlk Projem',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purple.shade300,
          appBar: AppBar(
            backgroundColor: Color(0xffC738BD),
            title: const Text("Hi-Kod"),
            centerTitle: true,
            actions: const [
              Icon(Icons.person),
            ],
            leading: IconButton(
              onPressed: () {
                print('Appbar\'daki ikon butonuna tıklandı!');
              },
              icon: const Icon(Icons.menu),
            ),
          ),
          body: Center(
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xffE49BFF),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: Text(
                  'İlk Uygulamam',
                  style: TextStyle(
                    color: Color(0xffF8F9D7),
                    fontSize: 20, // Adjusted font size to fit inside the container
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
