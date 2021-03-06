import 'package:flutter/material.dart';

void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HesapMakinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap Makinesi"),
        backgroundColor: Colors.blue[600],
        centerTitle: true,
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num s1, s2, sonuc;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      s1 = num.parse(t1.text);
      s2 = num.parse(t2.text);
      sonuc = s1 + s2;
    });
  }

  sayiCikar() {
    setState(() {
      s1 = num.parse(t1.text);
      s2 = num.parse(t2.text);
      sonuc = s1 - s2;
    });
  }

  sayiCarp() {
    setState(() {
      s1 = num.parse(t1.text);
      s2 = num.parse(t2.text);
      sonuc = s1 * s2;
    });
  }

  sayiBol() {
    setState(() {
      s1 = num.parse(t1.text);
      s2 = num.parse(t2.text);
      sonuc = s1 / s2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(20),
                color: Colors.blue,
                width: 1000,
                height: 50,
                child: Center(
                  child: Text(" İşlemin Sonucu: $sonuc",
                 style: TextStyle(
                   color: Colors.white,), ),
                ),
                ),
            TextField(
              controller: t1,
              // obscureText: true, ----> şifre olmuş olsaydı görünmemmesi için kullanırdım.
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '1.Sayı',
              ),
            ),
            TextField(
              controller: t2,
              //  obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '2.Sayı',
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: sayiTopla,
                    child: Text("+", style: TextStyle(fontSize: 20),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: sayiCikar,
                    child: Text("-", style: TextStyle(fontSize: 20),),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child:  ElevatedButton(
                    onPressed: sayiCarp,
                    child: Text("x", style: TextStyle(fontSize: 20),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: sayiBol,
                    child: Text("/", style: TextStyle(fontSize: 20),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 