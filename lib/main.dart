import 'package:flutter/material.dart';

void main() => runApp(MyEduApp());

class MyEduApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeraEduApp',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> buttons = [
    'लाइव क्लास',
    'MCQ बैंक',
    'नोट्स',
    'शंका निवारण'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('शिक्षा एक सहारा'),
      ),
      body: ListView.builder(
        itemCount: buttons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ElevatedButton(
              child: Text(buttons[index]),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(title: buttons[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          '$title पेज अभी बन रहा है...',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
