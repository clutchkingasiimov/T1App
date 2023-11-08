//Implement an abstract class for the animals 
abstract class Speak{
  void animalSpeak(String speakType);
}

//Animal class 
class Animal{
  String name;
  int age;  
  
  Animal(this.name, this.age);
  
  //Redirecting a constructor to a newborn animal
  Animal.newBorn(String name) : this(name, 0);
  
  void printName(){
    print('Name of animal is $name');
  }
  
  void printAge(){
    print('Age of animal is $age');
  }
}

//Bird class
//The bird class extends to an abstract class
class Bird extends Speak{
  String name;
  int age;
  
  
  Bird(this.name, this.age);

  @override 
  void animalSpeak(String speakType){
    print('The animal says $speakType');
  }
  
  void printName(){
    print('Name of animal is $name');
  }
  
  void printAge(){
    print('Age of animal is $age');
  }
}

//Cat class inherits from Animal
class Cat extends Animal{
  String species;
  
  Cat(this.species, super.name, super.age);
  
  @override
  void printName(){
    print('Name of the cat is $name');
  }
}

//Void function to print Animal's name
void printClassInfo(Animal animal){
  animal.printName();
}

void main(){
  Animal a = Animal('Sam',5); //This is valid 
  Cat c = Cat('Cheetah','Tom',2); //This is valid 
  Animal a1 = Cat('Tiger','Marcus',4); //This is also valid
  Bird b = Bird('Cuckoo',1);
  
  //Use the abstract class to denote the bird chirping 
  b.animalSpeak('Chirp');
    
  //Use instance method of the class
  a.printName();
  
  //Redirect the constructor for a newborn animal
  Animal newBorn = Animal.newBorn('Jimmy');
  newBorn.printAge();
  
  //Prints the runtime type of the class object 'a'
  print('The type of a is ${a.runtimeType}');
  
  //This function will not work since Bird is not a consumer of type Animal 
  //https://dart.dev/language/type-system#simple-type-assignment
  //The void function can only take in class types of either the consumer(Cat)
  //or producer(Animal)
//   printClassInfo(b); //This will not work 
  printClassInfo(a); //This will work 
  printClassInfo(c); //This will also work
//   a.printAge();

}
