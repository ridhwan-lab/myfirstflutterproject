// import 'package:flutter/material.dart';
// import 'package:myfirstflutterproject/models/pelajar.dart';

// // ignore: must_be_immutable
// class Coursedetail extends StatelessWidget {
//   Coursedetail({required this.pelajar, super.key});
//   Pelajar pelajar;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(pelajar.name ?? '-'),
//       ),
//       body: const Center(
//         child: Text('Hello World'),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:myfirstflutterproject/models/pelajar.dart';

// // ignore: must_be_immutable
// class Coursedetail extends StatelessWidget {
//   Coursedetail({required this.pelajar, super.key});
//   Pelajar pelajar;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(pelajar.name ?? '-'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'Nama',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 pelajar.name ?? '-',
//                 style: const TextStyle(fontSize: 18),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 'Jantina',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 pelajar.gender ?? '-',
//                 style: const TextStyle(fontSize: 18),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 'Umur',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 pelajar.age != null ? pelajar.age.toString() : 'N/A',
//                 style: const TextStyle(fontSize: 18),
//               ),
//             ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/models/pelajar.dart';
import 'package:myfirstflutterproject/widgets/customtile.dart';

// ignore: must_be_immutable
class Coursedetail extends StatelessWidget {
  Coursedetail({required this.pelajar, super.key});
  Pelajar pelajar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(pelajar.name ?? '-'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Customtile(title: 'Nama', value: pelajar.name ?? 'N/A'),
              Customtile(title: 'Jantina', value: pelajar.gender ?? 'N/A'),
              Customtile(
                title: 'Umur',
                value: pelajar.age != null ? pelajar.age.toString() : 'N/A',
              ),
              Customtile(title: 'Nama Sekolah', value: pelajar.schoolname ?? 'N/A'),
              Customtile(
                title: 'Nama Penjaga',
                value: pelajar.penjaga!.parentName ?? 'N/A'
              ),
               Customtile(
                title: 'Alamat',
                value: pelajar.penjaga!.address ?? 'N/A'
              ),
              Customtile(
                title: 'Status Hadir',
                value: pelajar.statusHadir.toString() ?? 'N/A'
              ),
              pelajar.statusHadir == 1
                  ? const Center(
                      child: Icon(
                        Icons.check_circle_outline,
                        size: 180,
                        color: Colors.green,
                      ),
                    )
                  : const Center(
                      child: Icon(
                        Icons.cancel_outlined,
                        size: 180,
                        color: Colors.red,
                      ),
                    ),
            ],
          ),
        ));
  }
}

