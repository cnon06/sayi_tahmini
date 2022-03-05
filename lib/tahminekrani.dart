import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled27/sonucEkrani.dart';

class tahminEkrani extends StatefulWidget {
  const tahminEkrani({Key? key}) : super(key: key);

  @override
  State<tahminEkrani> createState() => _tahminEkraniState();
}

class _tahminEkraniState extends State<tahminEkrani> {

  var tfTahmin = TextEditingController();
  int rastgeleSayi=0;
  int kalanHak=10;
  String yonlendirme="";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rastgeleSayi = Random().nextInt(101);
    print('üretilen rastgele sayı: $rastgeleSayi');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Kalan Hak: $kalanHak", style: TextStyle(color: Colors.pink, fontSize: 30)),
            Text("Yardım: $yonlendirme", style: TextStyle(color: Colors.black54, fontSize: 24)),
            Padding( padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  )
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink

                ),
                onPressed: ()
              {

                setState(() {
                  kalanHak--;

                });

                int tahmin;
                try
                {
                   tahmin = int.parse(tfTahmin.text);
                }
                catch(e)
                {
                  tahmin =0;
                }


                if(tahmin ==rastgeleSayi)
                  {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => sonucEkrani(true)));
                    return;
                  }

                if(tahmin >rastgeleSayi)
                  {
                    yonlendirme="Tahmini azalt";
                  }
                else {
                  yonlendirme="Tahmini artır";
                }



                if(kalanHak==0)
                  {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => sonucEkrani(false)));
                    return;
                  }


               // tfTahmin.text="";

                tfTahmin.clear();


                //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => sonucEkrani()));
              }, child: Text("TAHMİN ET"),

              ),

            )
          ],
        ),
      ),

    );
  }
}
