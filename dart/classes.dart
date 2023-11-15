/* Implements an abstract class for the Animal type named 'Speak'. What this 
class does is to provide a generic class that has an abstracted feature which 
can be inherited/extended and reused within other classes if needed */
abstract class Speak{
  void animalSpeak(String speakType);
}

//Animal class 
class Animal{
  String name;
  int age;  
  
  Animal(this.name, this.age);
  
  /* This is a Named constructor and this sets the class to a 
  specific type as needed. When .newBorn() instance method is called, 
  the class automatically instantiates the class with the animal's age 
  to 0 */
  Animal.newBorn(String name) : this(name, 0);
  
  void printName(){
    print('Name of animal is $name');
  }
  
  void printAge(){
    print('Age of animal is $age');
  }
}

//Bird class
/* The bird class extends to an abstract class, so the animal 'Bird' 
can use the 'Speak' abstract class and create its own variant of 
Speak */
class Bird extends Speak{
  String name;
  int age;
  
  
  Bird(this.name, this.age);

  /* The abstract class is used here to create 
  a custom 'Speak' method */
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
  /* 'Animal' is a valid return type for class Animal */
  Animal a = Animal('Sam',5);
  
  /* 'Cat' is a valid return type for class Cat */
  Cat c = Cat('Cheetah','Tom',2);
  
  /* 'Animal' is a valid return type for class Cat because 
  Cat inherits from Animal, so the type hierarchy is shared */
  Animal a1 = Cat('Tiger','Marcus',4); 
  
  /* 'Bird' is a valid return type for class Bird */
  Bird b = Bird('Cuckoo',1);
  
  //Use the abstract class to denote the bird chirping 
  b.animalSpeak('Chirp');
    
  //Use instance method of the class
  a.printName();
  
  /* Redirect the constructor for a newborn animal. The age 
  will automatically be assigned to 0 */
  Animal newBorn = Animal.newBorn('Jimmy');
  newBorn.printAge();
  
  //Prints the runtime type of the class object 'a'
  print('The type of a is ${a.runtimeType}');
  
  /* This function will not work since Bird is not a consumer of type Animal 
  (https://dart.dev/language/type-system#simple-type-assignment)
  The void function can only take in class types of either the consumer(Cat)
  or producer(Animal) */
//   printClassInfo(b); //This will not work 
  printClassInfo(a); //This will work 
  printClassInfo(c); //This will also work

}
