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

import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/models/pelajar.dart';

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon student
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/student_icon.png'), // Make sure the image path is correct
            ),
            const SizedBox(height: 16),
            
            // Nama pelajar
            ListTile(
              leading: const Icon(Icons.person, size: 40),
              title: Text(
                pelajar.name ?? 'Unknown',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'ID: ${pelajar.id}',
                style: const TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 20),

            // Extra content or course details here
            const Text(
              'Course details coming soon...',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
