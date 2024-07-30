void main()
{
Animal animal = Dog();
animal.makeSound();
animal = Cat();
animal.makeSound();
}
class Animal
{
 void makeSound()
  {
    print("animal sound");
  }
}
class Dog extends Animal
{
 @override
  void makeSound()
  {
    super.makeSound();
    print("woff");
  }
}
class Cat extends Animal
{
  @override
  void makeSound()
  {
    print("miu");
  }
}