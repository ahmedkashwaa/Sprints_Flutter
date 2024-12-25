import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("My First Project"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                    child: Image.network('https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png')),
                SizedBox(width: 50,),
                Expanded(
                  flex: 1,
                    child: Image.asset("assets/images/img_1.png")),
              ],
            ),
            SizedBox(height: 20,),
            Text(
              'The two images are displayed',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
