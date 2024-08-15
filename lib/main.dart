import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Styling App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter Text Styling',
                style: TextStyle(
                    //color:Color(Colors.red as int),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Experiment with text styles',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  //fontStyle:
                ),
              ),
              TextButton(
                onPressed: () {
                  MySnackBar('You clicked the button!', context);
                },
                child: Text(
                  'Click Me',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurple,
                  ),
                ),
              ),


            ],
          ),
        ));
  }
}
