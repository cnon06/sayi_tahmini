

import 'package:flutter/material.dart';
import 'package:untitled27/tahminekrani.dart';

class sonucEkrani extends StatefulWidget {

  bool sonuc;
  sonucEkrani(this.sonuc);

  @override
  State<sonucEkrani> createState() => _sonucEkraniState();
}

class _sonucEkraniState extends State<sonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            widget.sonuc ? Image.asset("images/smile.png", width: 150) : Image.asset("images/upset.png", width: 150),
            widget.sonuc ?
            Text( "KAZANDINIZ!", style: TextStyle(color: Colors.blue, fontSize: 36)) :
            Text( "KAYBETTİNİZ!!", style: TextStyle(color: Colors.red, fontSize: 36)),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(onPressed: ()
              {
                Navigator.pop(context);
               // Navigator.push(context, MaterialPageRoute(builder: (context) => tahminEkrani()));
              }, child: Text("Tekrar Dene")),
            )
          ],
        ),
      ),

    );
  }
}
