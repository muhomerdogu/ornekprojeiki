import 'package:flutter/material.dart';
import 'package:ornekprojeiki/models/student.dart';

String mesaj = "Motlandırma Durumu Raporlama Sistemimiz 2:";
int not = 65; //öğrencinin aldığı not olsun.
String durum = "Geçti";
String durumBut = "Bütünlemeye Kaldınız...";
String durumKaldi = "Dersten kaldınız...";

void main() {
  runApp(MaterialApp(home: MyaApp())); //
}

//widget yazmak için class yapısın ıkullanır.z
class MyaApp extends StatelessWidget {
  List<Student> students = [
    Student("Ömer", "Doğu", 100),
    Student("Yasemin", "S.", 75),
    Student("Semagül", "Doğu", 55)
  ];

  //student
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(mesaj),
        ),
        body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(students[index].firstName +
                        " " +
                        students[index].lastName ),
                    subtitle:Text("Sınavdan Aldığı Not:"+students[index].grade.toString()),
                  );
                })),
        Center(
          child: ElevatedButton(
            child: Text("Sonucu Gör:"),
            onPressed: () {
              //buradan devam ediyoruz.

              var alert = AlertDialog(
                title: Text(
                    "Sınav sonucunuz:"), //title demek Sınavı Geçti sonucu yazar.
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
