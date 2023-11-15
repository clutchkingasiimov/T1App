import 'dart:async';

/* In Dart, async functions are defined by type 'Future', 
 * as future represents a function that will hold a return 
 * type in the future */
Future<int> factorial(String name, int number) async {
  int f = 1;
  
  for (var i = 2; i <= number; i++){
    await Future.delayed(const Duration(seconds:1));
    f *= i;
  }
  print('Task $name has factorial $f');
  return f;

}

/* The async approach in Dart is similar to that of Python, 
 * virtually no difference except that functions and variables 
 * that work in async need to be defined using a 'Future' type
 * */ 
Future<void> asyncMain() async {
  List<int> results = await Future.wait([
    factorial('A',4),
    factorial('B',6),
    factorial('C',2)
  ]);
  
  print(results);
}


void main() {
  asyncMain();
}
