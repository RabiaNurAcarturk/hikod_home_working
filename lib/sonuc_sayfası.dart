
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
      home: SurveyForm(),
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

  void _submitForm() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          name: nameController.text,
          gender: selectedGender,
          isAdult: isAdult,
          smokes: smokes,
          cigarettesPerDay: cigarettesPerDay,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kişilik Anketi'),
        centerTitle: true,
      ),
      body: Padding(
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
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final String name;
  final String gender;
  final bool isAdult;
  final bool smokes;
  final double cigarettesPerDay;

  ResultPage({
    required this.name,
    required this.gender,
    required this.isAdult,
    required this.smokes,
    required this.cigarettesPerDay,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anket Sonuçları'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Adınız ve Soyadınız: $name'),
            Text('Cinsiyetiniz: $gender'),
            Text('Reşit misiniz: ${isAdult ? "Evet" : "Hayır"}'),
            Text('Sigara kullanıyor musunuz: ${smokes ? "Evet" : "Hayır"}'),
            if (smokes)
              Text('Günde kaç tane sigara: ${cigarettesPerDay.round()}'),
          ],
        ),
      ),
    );
  }
}