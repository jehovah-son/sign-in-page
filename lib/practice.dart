// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(Practice());
// //   print(9 == 9);
// // }

// class Practice extends StatefulWidget {
//   Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// class _PracticeState extends State<Practice> {
// // Variable: you can store diffrent types of info into variable
//   // int age = 25;
//   // String name = 'success';
//   // double height = 3.1;
//   // bool isBeginner = true;

// //basic maths operators:
// // 1+1 -> 2, add
// // 4-1 -> 3, subtract
// // 2*3 -> 6, multiply
// // 8/4 -> 2, divide
// // 9%4 -> 1, remainder
// //5++ -> 6 _increment by 1
// //5-- -> 4 decrement by 1

// // COMPARISON OPERATORS:
// // 5 = 5 -> true, Equal to
// // 2 != 3 -> true, Not Equal to
// // 3 > 2 -> true, Greater than
// // 3 > 2 -> false, Less than
// // 5 >= 5 -> true, Greater or Eqaul to
// // 3 <= 7 -> true, less or Eqaul to

// // Logical Operators:
// // AND operators, return true if both sides are true
// // isBeginner && ( age < 18 years old) -> return false

// // OR Operators, returns true if at least one side is true
// // isBeginner || (age < 18) -> returns true

// // NOT OPERATORS, returns the opposite value
// // isBeginner -> returns false

// //CONTROL FLOW  how we are going to tell the computer to get things done

// // if (a condition is true){
// //   do something
// // }
// // e.g
// // if (age >= 18){
// //   print ('you are an adult')
// // }

// // if (condition){
// //   do something
// // } else if{
// //   do somethin else
// // }

// // else (){

// // }

// //LOOPS for loops and while loops

// //FUNCTION     // the wordvoid means that the function returns nothing

// // basic function:
//   // void greet() {
//   //   print('hello max');
//   // }

// // function with parameters:
// // void greetperson(String name, int age){
// // print('hello'+ name);

// // function with return type
// // int add (int a, int b){
// // int sum = a + b;
// // return sum;
// // }

// // DATA STRUCTURE

// //LIST is an ordered collection of element can hv duplicate
// // List<String> names=['max','maxs','maxwell','maxwell]
// //List<int> numbers= [1,2,3,4,5,6];
// // void printNumbers(){
// // for (int i = 0;i<numbers.length; i++){
// // print(numbers[i]);
// // }
// // }

// // SET: unorderd collection of unique element
// //Set<String>uniqueNames={'max','maxs','maxwell'};

// //MAP: stored as key-value pairs
// //Map user ={
// // "name":'max',
// //"age":25,
// //"heigth": 180
// //  }


// @override
// Widget build(BuildContext context) {
//   // greetperson('max ', 54);
// // int mysum=add(5,5);
// // print(mysum);
// //printNumbers();
// // print(user['heigth]);
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(
//         'to do list',
//         style: TextStyle(color: Colors.amber),
//       ),
//       centerTitle: true,
//       backgroundColor: Colors.black,
//     ),
//   );
// }
// }