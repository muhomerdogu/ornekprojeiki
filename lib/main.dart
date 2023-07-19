import 'package:flutter/material.dart';
import 'package:/flutter/cupertino.dart';
var ogrenciler=["Ömer DOĞU","Yasemin S.,","Kadriye D.,","Salim Eryiğit","Sami Boylu","Kadir Delibaş"];
String mesaj = "Motlandırma Durumu Raporlama Sistemimiz:";
int not = 65; //öğrencinin aldığı not olsun.
String durum = "Geçti";
String durumBut = "Bütünlemeye Kaldınız...";
String durumKaldi = "Dersten kaldınız...";


void main() {
  runApp(MaterialApp(home: MyaApp())); //

}

//widget yazmak için class yapısın ıkullanır.z
class MyaApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(mesaj),
        ),
        body: buildBody( context)

        );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: ogrenciler.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(ogrenciler[index]);
                }

            )

        ),
        Center(
          child: ElevatedButton(
            child: Text("Sonucu Gör:"),
            onPressed: () {
              //buradan devam ediyoruz.

              var alert = AlertDialog(
                title: Text( "Sınav sonucunuz:"),  //title demek Sınavı Geçti sonucu yazar.
                content: Text(durum), //content: içerik demektir.
              );
              showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                  alert); //hadi görünüz dediğiniz nokta burasıdır.
            },
          ),
        ),
      ],
    );

  }
}

