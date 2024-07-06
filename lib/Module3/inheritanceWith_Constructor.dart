
void main(){
  Employe employe = Employe(12345);
  employe.display();
  // Student student = Student("jay", 45);
  // student.display();
}
class Student
{
  String name;
  int age;
  Student(this.name,this.age){
    print("called");
  }
  display(){
    print(name);
    print(age);
  }

}
class Employe extends Student
{
  int Employeid;
  Employe(this.Employeid):super("jay",45);
  display(){
    print("Employe id = $Employeid");
    super.display();
  }
 
  
  
}