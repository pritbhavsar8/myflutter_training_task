class Student{
  String _name;
  int _age;
  Student(this._name,this._age);
  get name {
    return _name;
  }
    get age {
    return _age;
  }


   display(){
    print("student name is $_name");
    print("student age is $_age");
   }  

  
}