import 'package:challenge2/storybrain.dart';
import 'package:flutter/material.dart';

storyBrain sb = storyBrain();
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Mon histoire"),
      ),
      body: HomeApp(),
    ),
  ));
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                sb.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
              onPressed: () {
                setState(() {
                  sb.suivant(1);
                });
              },
              child:
                  Text(sb.getChoice1(), style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Visibility(
              visible: sb.buttonVisibleOrNot(),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {
                  setState(() {
                    sb.suivant(2);
                  });
                },
                child: Text(sb.getChoice2(),
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
