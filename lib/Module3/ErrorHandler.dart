// Error handle karva try and Catch no use thase
void main()
{
  area a = area();
  a.Width = 23;
  a.calculateArea();

}
class area 
{
  double ?Width;
  double ? height;
  calculateArea(){
    try
    {
      var area = Width!*height!;
      print(area);

    }catch(e){
      print(e);
    }
    
  }
}