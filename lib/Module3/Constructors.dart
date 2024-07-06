void main(){
Student student = Student(rollnumber: 1234,name: 'juhul');
student.display();
}
class Student
{
  String? name; // this.name thi class no je variable che tema value add thase constructor ni
  int ? rollnumber;
  Student({this.name='prit',required this.rollnumber}){  // Constuctor is special type of funcation class name and Constuctor name always same
  }
 
  display(){
    print("Student Name is $name");
    print("Student Rollno is $rollnumber");
  }
}