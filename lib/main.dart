import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
          elevation: 0, color: Colors.white
      )//AppBarTheme
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

//Source: id.wikipedia.org/wiki/Daftar_Ilmuwan_Muslim

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ilmuwan Islam"),
      ),//AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI('Al Khawirzmi'
              , 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/1983_CPA_5426_%281%29.png/500px-1983_CPA_5426_%281%29.png'
              , 'Muḥammad bin Mūsā al-Khawārizmī  adalah seorang ahli dalam bidang matematika, astronomi, astrologi, dan geografi yang berasal dari Persia. Lahir sekitar tahun 780 di Khwārizm (sekarang Khiva, Uzbekistan) dan wafat sekitar tahun 850 di Baghdad. Hampir sepanjang hidupnya, ia bekerja sebagai dosen di Sekolah Kehormatan di Baghdad yang didirikan oleh Khalifah Bani Abbasiyah Al-Mamun, tempat ia belajar ilmu alam dan matematik, termasuk mempelajari terjemahan manuskrip Sanskerta dan Yunani'),

          _createPageItemUI('Al-Farabi',
              'https://upload.wikimedia.org/wikipedia/commons/3/33/Iranian_Farabi.jpg',
              'Abū Nasir Muhammad bin al-Farakh al-Fārābi (870-950, Bangsa Turk: Farabi,  singkat Al-Farabi adalah ilmuwan dan filsuf Islam berasal dari Farab, Kazakhstan.[1] Ia juga dikenal dengan nama Abū Nasir al-Fārābi (dalam beberapa sumber ia dikenal sebagai Abu Nasr Muhammad Ibn Muhammad Ibn Tarkhan Ibn Uzalah Al- Farabi, juga dikenal di dunia barat sebagai Alpharabius, Al-Farabi, Farabi, dan Abunasir.'),

          _createPageItemUI('Al-Ghazali',
              'https://1.bp.blogspot.com/-HmeV6QJGUGA/Wcr0_mprXQI/AAAAAAAAEdw/P1kWp7ZhmEg3SVEkg7Luyt0pj6OFU7nAQCLcBGAs/s640/ulama.jpg',
              'Imam al-Ghazali mempunyai daya ingat yang kuat dan bijak berhujjah. Ia digelar Hujjatul Islam karena kemampuannya tersebut. Ia sangat dihormati di dua dunia Islam yaitu Saljuk dan Abbasiyah yang merupakan pusat kebesaran Islam. Ia berjaya menguasai pelbagai bidang ilmu pengetahuan. Imam al-Ghazali sangat mencintai ilmu pengetahuan. Ia juga sanggup meninggalkan segala kemewahan hidup untuk bermusafir dan mengembara serta meninggalkan kesenangan hidup demi mencari ilmu pengetahuan. Sebelum dia memulai pengembaraan, dia telah mempelajari karya ahli sufi ternama seperti al-Junaid Sabili dan Bayazid Busthami. Imam al-Ghazali telah mengembara selama 10 tahun'),
        ],
      ),//PageView
    );//Sccafold
  }
}

_createPageItemUI(String nama, String gambar, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
            image: NetworkImage(gambar),
        height: 300.0,
        fit: BoxFit.cover,),

        SizedBox(
        height: 20.0,
        ),//SizedBox

        Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),

        ),//Padding



        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(deskripsi,
          style: TextStyle(fontSize: 15.0),
          textAlign: TextAlign.justify,),
        )
      ],
    ),
  );
}

