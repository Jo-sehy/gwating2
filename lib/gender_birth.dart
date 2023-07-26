import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BirthdayForm(),
    );
  }
}

class BirthdayForm extends StatefulWidget {
  const BirthdayForm({Key? key}) : super(key: key);

  @override
  _BirthdayFormState createState() => _BirthdayFormState();
}

class _BirthdayFormState extends State<BirthdayForm> {
  late DateTime selectedDate;
  final List<String> years =
      List.generate(100, (index) => (DateTime.now().year - index).toString());

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButtonFormField<int>(
            value: selectedDate.year,
            onChanged: (int? year) {
              setState(() {
                selectedDate =
                    DateTime(year!, selectedDate.month, selectedDate.day);
              });
            },
            items: years.map((String year) {
              return DropdownMenuItem<int>(
                value: int.parse(year),
                child: Text(year),
              );
            }).toList(),
          ),
          SizedBox(height: 16),
          DropdownButtonFormField<int>(
            value: selectedDate.month,
            onChanged: (int? month) {
              setState(() {
                selectedDate =
                    DateTime(selectedDate.year, month!, selectedDate.day);
              });
            },
            items: List.generate(12, (index) => index + 1).map((int month) {
              return DropdownMenuItem<int>(
                value: month,
                child: Text(month.toString()),
              );
            }).toList(),
          ),
          SizedBox(height: 16),
          DropdownButtonFormField<int>(
            value: selectedDate.day,
            onChanged: (int? day) {
              setState(() {
                selectedDate =
                    DateTime(selectedDate.year, selectedDate.month, day!);
              });
            },
            items: List.generate(31, (index) => index + 1).map((int day) {
              return DropdownMenuItem<int>(
                value: day,
                child: Text(day.toString()),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
