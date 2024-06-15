import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kişilik Anketi',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kişilik Anketi'),
          centerTitle: true,
        ),
        body: SurveyForm(),
      ),
    );
  }
}

class SurveyForm extends StatefulWidget {
  @override
  _SurveyFormState createState() => _SurveyFormState();
}

class _SurveyFormState extends State<SurveyForm> {
  final TextEditingController nameController = TextEditingController();
  String selectedGender = 'Erkek';
  bool isAdult = false;
  bool smokes = false;
  double cigarettesPerDay = 0;

  bool showResult = false;

  void _submitForm() {
    setState(() {
      showResult = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Adınız ve Soyadınız',
            ),
          ),
          SizedBox(height: 20),
          DropdownButton<String>(
            value: selectedGender,
            onChanged: (String? newValue) {
              setState(() {
                selectedGender = newValue!;
              });
            },
            items: <String>['Erkek', 'Kadın']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          CheckboxListTile(
            title: Text('Reşit misiniz?'),
            value: isAdult,
            onChanged: (bool? value) {
              setState(() {
                isAdult = value!;
              });
            },
          ),
          SwitchListTile(
            title: Text('Sigara kullanıyor musunuz?'),
            value: smokes,
            onChanged: (bool value) {
              setState(() {
                smokes = value;
              });
            },
          ),
          if (smokes)
            Slider(
              value: cigarettesPerDay,
              min: 0,
              max: 20,
              divisions: 20,
              label: cigarettesPerDay.round().toString(),
              onChanged: (double value) {
                setState(() {
                  cigarettesPerDay = value;
                });
              },
            ),
          Center(
            child: ElevatedButton(
              onPressed: _submitForm,
              child: Text('Bilgilerimi Gönder'),
            ),
          ),
          if (showResult)
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(16.0),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Adınız ve Soyadınız: ${nameController.text}'),
                  Text('Cinsiyetiniz: $selectedGender'),
                  Text('Reşit misiniz: ${isAdult ? "Evet" : "Hayır"}'),
                  Text('Sigara kullanıyor musunuz: ${smokes ? "Evet" : "Hayır"}'),
                  if (smokes)
                    Text('Günde kaç tane sigara: ${cigarettesPerDay.round()}'),
                ],
              ),
            ),
        ],
      ),
    );
  }
}


/*import 'package:flutter/material.dart';

void main() {
  runApp(IlkUygulamam());
}

class IlkUygulamam extends StatefulWidget {
  const IlkUygulamam({Key? key}) : super(key: key);

  @override
  State<IlkUygulamam> createState() => _IlkUygulamamState();
}


class _IlkUygulamamState extends State<IlkUygulamam> {
  String inputValue = '';
  TextEditingController passController = TextEditingController();
  String text1 = '';
  bool _isSwitched = false;
  bool _showResult=false;
  double _slideValue = 0;
  var pass = '';
  String _selectedGender = "Lütfen Cinsiyet seçiniz.";


  @override
  Widget build(BuildContext context) {
    bool s;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false, //TextField'a basınca kllavye ekranda overflow oluyordu. Bu satır bunu engelledi.
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadowColor: Colors.black,
          titleSpacing: 25,
          backgroundColor: Colors.orange,
          title: Text('Kişilik Anketi',style: TextStyle(color:Colors.white,fontSize: 32,fontWeight: FontWeight.w500),),
          centerTitle: true,

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
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextField(

                  onChanged: (_text1) {
                    setState(() {
                      pass = _text1;
                    });
                  },
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    hintText: 'Lütfen adınızı ve soyadınızı giriniz.',
                    labelText: 'adınız ve soyadınız',
                    icon: Icon(
                      Icons.person,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Lütfen cinsiyetinizi seçiniz:'),
                  DropdownButton(
                    value: _selectedGender,
                    onChanged: (_gender) {
                      setState(() {
                        _selectedGender = _gender!;
                      });
                    },
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                          child: Text(_selectedGender), value: _selectedGender),
                      DropdownMenuItem(child: Text("Kadın"), value: 'kadın'),
                      DropdownMenuItem(child: Text("Erkek"), value: 'erkek'),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
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
                    'Sigara içiyor musunuz?',
                    style: TextStyle(color: Colors.white),
                  ),

                  tileColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Visibility(
      visible: _isSwitched,
      child: Text('Günde kaç sigara içiyorsunuz?')),
),
              Visibility(
                visible: _isSwitched,
                child: Slider(
                  value: _slideValue,
                  activeColor: Colors.orangeAccent,
                  inactiveColor: Colors.black,
                  divisions: 50,
                  max: 50,
                  min: 0,
                  label: _slideValue.round().toString(),
                  onChanged: (slider) {
                    setState(() {
                      _slideValue = slider;
                    });
                  },
                ),
              ),


              SizedBox(
                height: 12,
              ),
              OutlinedButton(onPressed: (){
                setState(() {
                  _showResult=!_showResult;
                });
              }, child: Text('Bilgileri Gönder')),
              Visibility(
                visible: _showResult,
                child: Divider(
                  height: 18,
                  color: Colors.deepPurple,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Visibility(
                  visible:_showResult ,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ad ve Soyad: $pass ',style: TextStyle(color:Colors.white),),
                        Text('Cinsiyetiniz: $_selectedGender',style: TextStyle(color:Colors.white),),
                        Text('Sigara içiyor musun?: ${_isSwitched ? 'Evet': 'Hayır'}',style: TextStyle(color:Colors.white),),
                        Visibility(visible:_isSwitched,
                        child: Text('Günde kaç adet sigara içiyorsun?: $_slideValue',style: TextStyle(color:Colors.white),)),

                      ],
                    ),
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
