// import 'package:flutter/material.dart';
// import 'package:smkdev/src/constants/constant.dart';

// class BookingFormUser extends StatelessWidget {
//   final Size size;

//   const BookingFormUser({Key key, this.size}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final _formKey = GlobalKey<FormState>();
//     bool _autoValidate = false;
//     TextEditingController textNama = new TextEditingController();
//     String _nama = '';

//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Container(
//         SizedBox.expand(
//           child: DraggableScrollableSheet(
//             initialChildSize: 0.6,
//             minChildSize: 0.6,
//             maxChildSize: 0.6,
//             builder: (BuildContext context, s) {
//               return Container(
//                 padding: EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                     color: Colors.grey[50],
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20))),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       left: size.width * 0.4,
//                       child: Container(
//                         width: 40,
//                         height: 10,
//                         margin: EdgeInsets.only(bottom: 20),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             color: colorPrimary),
//                       ),
//                     ),
//                     ListView(
//                       controller: s,
//                       padding: EdgeInsets.only(top: 30, bottom: 10),
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Maaf, anda belum terdaftar dalam aplikasi. Harap daftar terlebih dahulu untuk dapat membooking jadwal dengan dokter yang bersangkutan",
//                               style: TextStyle(
//                                   color: Colors.grey,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                             SizedBox(height: 20),
//                             Form(
//                                 key: _formKey,
//                                 // autovalidate: _autoValidate,
//                                 child: Column(
//                                   children: [
//                                     Container(
//                                       margin:
//                                           EdgeInsets.symmetric(horizontal: 10),
//                                       padding: EdgeInsets.symmetric(
//                                           horizontal: 5, vertical: 2),
//                                       decoration: BoxDecoration(
//                                           color: Colors.grey[50],
//                                           border: Border.all(
//                                               color: Colors.grey[300]),
//                                           borderRadius:
//                                               BorderRadius.circular(15)),
//                                       child: TextFormField(
//                                         controller: textNama,
//                                         keyboardType: TextInputType.text,
//                                         validator: (value) {
//                                           if (value.length < 3) {
//                                             print('is empty');
//                                             return 'Username must be more than 6 charater';
//                                           } else
//                                             return null;
//                                         },
//                                         onSaved: (String val) {
//                                           _nama = val;
//                                         },
//                                         decoration: InputDecoration(
//                                             contentPadding: EdgeInsets.only(
//                                                 left: 20, right: 20),
//                                             hintText: "Nama",
//                                             labelText: "Nama",
//                                             hintStyle: TextStyle(
//                                               color: Colors.grey[300],
//                                             ),
//                                             enabledBorder: InputBorder.none,
//                                             focusedBorder: InputBorder.none),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin:
//                                           EdgeInsets.symmetric(horizontal: 10),
//                                       padding: EdgeInsets.symmetric(
//                                           horizontal: 5, vertical: 2),
//                                       decoration: BoxDecoration(
//                                           color: Colors.grey[50],
//                                           border: Border.all(
//                                               color: Colors.grey[300]),
//                                           borderRadius:
//                                               BorderRadius.circular(15)),
//                                       child: TextFormField(
//                                         controller: textNama,
//                                         keyboardType: TextInputType.number,
//                                         validator: (value) {
//                                           if (value.length < 3) {
//                                             print('is empty');
//                                             return 'Username must be more than 6 charater';
//                                           } else
//                                             return null;
//                                         },
//                                         onSaved: (String val) {
//                                           _nama = val;
//                                         },
//                                         decoration: InputDecoration(
//                                             contentPadding: EdgeInsets.only(
//                                                 left: 20, right: 20),
//                                             hintText: "No Handphone",
//                                             labelText: "No Handphone",
//                                             hintStyle: TextStyle(
//                                               color: Colors.grey[300],
//                                             ),
//                                             enabledBorder: InputBorder.none,
//                                             focusedBorder: InputBorder.none),
//                                       ),
//                                     ),
//                                     Container(
//                                       margin:
//                                           EdgeInsets.symmetric(horizontal: 10),
//                                       padding: EdgeInsets.symmetric(
//                                           horizontal: 5, vertical: 2),
//                                       decoration: BoxDecoration(
//                                           color: Colors.grey[50],
//                                           border: Border.all(
//                                               color: Colors.grey[300]),
//                                           borderRadius:
//                                               BorderRadius.circular(15)),
//                                       child: TextFormField(
//                                         controller: textNama,
//                                         keyboardType: TextInputType.text,
//                                         validator: (value) {
//                                           if (value.length < 3) {
//                                             print('is empty');
//                                             return 'Username must be more than 6 charater';
//                                           } else
//                                             return null;
//                                         },
//                                         onSaved: (String val) {
//                                           _nama = val;
//                                         },
//                                         decoration: InputDecoration(
//                                             contentPadding: EdgeInsets.only(
//                                                 left: 20, right: 20),
//                                             hintText: "email",
//                                             labelText: "email",
//                                             hintStyle: TextStyle(
//                                               color: Colors.grey[300],
//                                             ),
//                                             enabledBorder: InputBorder.none,
//                                             focusedBorder: InputBorder.none),
//                                       ),
//                                     ),
//                                   ],
//                                 ))
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
