class Student{
  String firstName="Test";
  String lastName="Test";
  int grade=0;
  String status="Test";
  //student alanların tek tek veya direk Constructor içinde de set edebiliriz.
  Student(String firstName, String lastName, int grade, String status)
  {
    this.firstName=firstName;
    this.lastName=lastName;
    this.grade=grade;
    this.status="Geçti";  //dikkat edersek durumu dikkat ediniz. Gelen duruma göre otomaik hesaplansa
  }
}