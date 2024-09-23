// import 'package:flutter/material.dart';

// class Todo extends StatefulWidget {
//   const Todo({super.key});

//   @override
//   State<Todo> createState() => _TodoState();
// }

// class _TodoState extends State<Todo> {
//    TextEditingController _controller = TextEditingController();
// String greetlist ='';


//   void greetuser() {
//     setState(() {
//     greetlist='hello,'+_controller.text;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(greetlist),
//               TextField(
//                controller: _controller,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(), hintText: 'type here'),
//               ),
//               ElevatedButton(onPressed: greetuser, child: Text('tap'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
