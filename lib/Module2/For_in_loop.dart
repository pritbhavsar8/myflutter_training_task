void main(){
  List<int> name = [1,2,3,4,5,6];
  List<int> b = [];
  List<int> c = [];
  for(var i in name){
    if(i%2==0){
      b.add(i);

    }
    else{
      c.add(i);
    }
  }
  print(b);
  print(c);
}