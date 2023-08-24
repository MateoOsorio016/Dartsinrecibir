// // import 'package:flutter/material.dart';

// // class ClienteForm extends StatelessWidget {
// //   const ClienteForm({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Instructor'),
// //       ),
// //       body: const SingleChildScrollView(
// //         child: Padding(
// //           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
// //           child: Column(
// //             children: [
// //               InstructorForm(),
// //               InstructorForm()
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// class InstructorForm extends StatelessWidget {
//   const InstructorForm({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       autofocus: true,
//       initialValue: '',
//       textCapitalization: TextCapitalization.words,
//       keyboardType: TextInputType.phone,
//       decoration: const InputDecoration(
//         hintText: 'Nombre usuario',
//         labelText: 'Nombre',
//         helperText: 'Solo letra',
//         counterText: '3 caracteres',
//         prefixIcon: Icon(Icons.abc_sharp),
//         suffixIcon: Icon(Icons.ac_unit_rounded),
//         icon: Icon(Icons.accessibility),
//       ),
//     );
//   }
// }
