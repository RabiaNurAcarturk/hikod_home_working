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
