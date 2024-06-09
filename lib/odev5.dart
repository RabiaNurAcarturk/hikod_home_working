/*Öğrenme Raporu
Bu derste UI widget'larına devam edilmiştir.
Derste üzerinde durulan Widgetlar:
-Layout Widgetları (Column,Row)
-Expanded Widget'ı
-SizedBox Widget'ı

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //statless yazınca kendisi widget oluşturuyor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'İlk Projem',
        home: SafeArea(
          //safe area yazdık (alttaki işlemi ve bunu uygulamayla görev çubuğu ayırmak için)
          child: Scaffold(
            backgroundColor:Colors.blueGrey,
            //scaffolda tıkla wrap with widget
            appBar: AppBar(
              //control ile widgeta tıkla (kaynak kodu)
              backgroundColor: Colors.indigo,
              title: Text("Hi-Kod"),
              centerTitle: true,
              actions: [Icon(Icons.person)],
              leading: IconButton.outlined(
                  onPressed: () {
                    print('Appbar\'daki ikon butonuna tıklandı!');
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            body:SizedBox(//columı sizebox ile sardık
              width: 350 , //cross axiste geişliği ayarlayabiliyoruz

              child: Column( //container'ı column ile sarmaladık

                mainAxisAlignment:MainAxisAlignment.spaceAround,//ana eksende(y) işlemler
                crossAxisAlignment:CrossAxisAlignment.center,

                verticalDirection: VerticalDirection.up,

                children: [ //aray list mantığı
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 1")),
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 2")),
                    decoration: BoxDecoration(
                        color: Colors.teal
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 3")),
                    decoration: BoxDecoration(
                        color: Colors.purple
                    ),
                  ),
                ],
              ),
            ) ,
          ),
        ));
  }
}import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //statless yazınca kendisi widget oluşturuyor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'İlk Projem',
        home: SafeArea(
          //safe area yazdık (alttaki işlemi ve bunu uygulamayla görev çubuğu ayırmak için)
          child: Scaffold(
            backgroundColor:Colors.blueGrey,
            //scaffolda tıkla wrap with widget
            appBar: AppBar(
              //control ile widgeta tıkla (kaynak kodu)
              backgroundColor: Colors.indigo,
              title: Text("Hi-Kod"),
              centerTitle: true,
              actions: [Icon(Icons.person)],
              leading: IconButton.outlined(
                  onPressed: () {
                    print('Appbar\'daki ikon butonuna tıklandı!');
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            body:SizedBox(//columı sizebox ile sardık
              width: 350 , //cross axiste geişliği ayarlayabiliyoruz

              child: Column( //container'ı column ile sarmaladık

                mainAxisAlignment:MainAxisAlignment.spaceAround,//ana eksende(y) işlemler
                crossAxisAlignment:CrossAxisAlignment.center,

                verticalDirection: VerticalDirection.up,

                children: [ //aray list mantığı
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 1")),
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 2")),
                    decoration: BoxDecoration(
                        color: Colors.teal
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 3")),
                    decoration: BoxDecoration(
                        color: Colors.purple
                    ),
                  ),
                ],
              ),
            ) ,
          ),
        ));
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //statless yazınca kendisi widget oluşturuyor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'İlk Projem',
        home: SafeArea(
          //safe area yazdık (alttaki işlemi ve bunu uygulamayla görev çubuğu ayırmak için)
          child: Scaffold(
            backgroundColor:Colors.blueGrey,
            //scaffolda tıkla wrap with widget
            appBar: AppBar(
              //control ile widgeta tıkla (kaynak kodu)
              backgroundColor: Colors.indigo,
              title: Text("Hi-Kod"),
              centerTitle: true,
              actions: [Icon(Icons.person)],
              leading: IconButton.outlined(
                  onPressed: () {
                    print('Appbar\'daki ikon butonuna tıklandı!');
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            body:SizedBox(
              height: 300,
              child: Row( //container'ı column ile sarmaladık
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,



                children: [ //aray list mantığı
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 1")),
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 2")),
                    decoration: BoxDecoration(
                        color: Colors.teal
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 3")),
                    decoration: BoxDecoration(
                        color: Colors.purple
                    ),
                  ),
                  //Expanded(//expanded ile sarmalanan container ekrana artık sığar

                ],
              ),
            ) ,
          ),
        ));
  }
}


Mobil uygulamamıza dışarıdan resim eklemek: (Dosya yoluyla)

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
        title: 'İlk ödevim',
        home: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white54,
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
                body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/manzara.jpg')
                    )
                  ),
                )

            )));
  }
}



Öğrenme Raporu
Bu derste UI widget'larına devam edilmiştir.
Derste üzerinde durulan Widgetlar:-Layout Widgetları (Column,Row)
-Margin
-Padding
-Textfield
-CheckBox
-CheckBox Listile
-Switch
-Switch Lİstile
-Dropdown Button
-Slider
-Outline Button
-Text Button
-Elevated Button
Ve uygulamamıza internetten veya bilgisayarımız üzerinden nasıl resim ekleriz? Bu konular üstünde yoğunlaşılmıştır.

Dersin örnek kodları

import 'package:flutter/material.dart';

void main() {
  runApp(IlkUygulamam());
}

class IlkUygulamam extends StatefulWidget {
  const IlkUygulamam({Key? key}) : super(key: key);

  @override
  State<IlkUygulamam> createState() => _IlkUygulamamState();
}

List<String> options = ['C', 'C++', 'Javascript', 'Flutter', 'Kotlin']; //Last

class _IlkUygulamamState extends State<IlkUygulamam> {
  String inputValue = '';
  TextEditingController passController = TextEditingController();
  String text1 = '';
  bool _isChecked = false;
  bool _isSwitched = false;
  double _slideValue = 0;
  var pass = '';
  String _selectedGender = "none";

  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    bool s;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: SizedBox(
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (_text1) {
                    setState(() {
                      pass = _text1;
                    });
                  },
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    hintText: 'Enter your password',
                    labelText: 'password',
                    suffixIcon: Icon(Icons.abc_outlined),
                    icon: Icon(
                      Icons.password,
                      color: Colors.black,
                    ),
                  ),
                  controller: passController,
                  onTap: () {
                    print(' Text editing\'e basıldı.');
                  },
                  onEditingComplete: () {
                    print("Text edit bitti!");
                  },
                  obscureText: true,
                ),
              ),
              Row(

                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (_dal) {
                      setState(() {
                        _isChecked = _dal!;
                      });
                    },
                    focusColor: Colors.black45,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Outlined Button\a basıldı!');
                    },
                    child: Text('Outlined Button'),

                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green,
                    foregroundColor: Colors.white,

                    ),

                    ),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        print('Outlined Button\a basıldı!');
                      },
                     icon: Icon(Icons.access_alarm_outlined),

                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white54,

                      ), label: Text('İkonlu Outline Button'),

                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  value: _isChecked,
                  onChanged: (_dal) {
                    setState(() {
                      _isChecked = _dal!;
                    });
                  },
                  activeColor: Colors.white54,
                  title: Text(
                    'Checkbox Listile Title',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'subtitle',
                    style: TextStyle(color: Colors.white54),
                  ),
                  tileColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Switch(
                value: _isSwitched,
                onChanged: (SwitchData) {
                  setState(
                    () {
                      _isSwitched = SwitchData;
                    },
                  );
                },
                activeColor: Colors.deepOrange,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SwitchListTile(
                  value: _isSwitched,
                  onChanged: (SwitchData) {
                    setState(
                      () {
                        _isSwitched = SwitchData;
                      },
                    );
                  },
                  activeColor: Colors.deepPurple,
                  title: Text(
                    'Switch Listile Title',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'subtitle',
                    style: TextStyle(color: Colors.white54),
                  ),
                  tileColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),

              Visibility(
                visible: _isSwitched,
                child: Slider(
                  value: _slideValue,
                  activeColor: Colors.deepPurpleAccent,
                  inactiveColor: Colors.black,
                  divisions: 20,
                  max: 100,
                  min: 0,
                  label: _slideValue.round().toString(),
                  onChanged: (slider) {
                    setState(() {
                      _slideValue = slider;
                    });
                  },
                ),
              ),
              DropdownButton(
                value: _selectedGender,
                onChanged: (_gender) {
                  setState(() {
                    _selectedGender = _gender!;
                  });
                },
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                      child: Text("Lütfen Cinsiyet seçiniz. "), value: 'none'),
                  DropdownMenuItem(child: Text("Kadın"), value: 'kadın'),
                  DropdownMenuItem(child: Text("Erkek"), value: 'erkek'),
                ],
              ),
              Expanded(
                child: ListTile(
                  title: Text('C'),
                  leading: Radio(
                    value: options[0],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('C++'),
                  leading: Radio(
                    value: options[1],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('JavaScript'),
                  leading: Radio(
                    value: options[2],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Flutter'),
                  leading: Radio(
                    value: options[3],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Kotlin'),
                  leading: Radio(
                    value: options[4],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                height: 18,
                color: Colors.deepPurple,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Text('Text value: $pass'),
                      Text('CheckBox valuesi: $_isChecked'),
                      Text('Switch  valuesi: $_isSwitched'),
                      Text('Slider valuesi: $_slideValue'),
                      Text('DropDownButton valuesi: $_selectedGender')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
 */