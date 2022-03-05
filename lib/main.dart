import 'package:flutter/material.dart';
import 'package:untitled27/tahminekrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Tahmin Oyunu", style: TextStyle(color: Colors.black54, fontSize: 36)),
            Image.asset("images/dice.png", width: 150,),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => tahminEkrani()));
                  }, child: Text("Oyuna Başla")),
            )
          ],
        ),
      ),

    );
  }
}
