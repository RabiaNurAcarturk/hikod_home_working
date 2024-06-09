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

/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'İlk ödevim',
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Color(0xffBDF5F2),
              appBar: AppBar(
                backgroundColor: Colors.indigo,
                title: Text("Hi-Kod",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
                centerTitle: true,
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xffBDF5F2),
                      size: 40,
                    ),
                    onPressed: () {
                      print('İnsan ikonuna tıklandı!');
                    },
                  )
                ],
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 40,
                    )),
              ),
              body: Center(
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                      child: Text(
                        'Hello World!',
                        style: TextStyle(
                            color: Color(0xffBDF5F2), fontWeight: FontWeight.w800),
                      )),
                ),
              )),
        ));
  }
}
  */

