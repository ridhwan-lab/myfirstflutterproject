// import 'package:flutter/material.dart';



// class FlutterCourseDetails extends StatelessWidget {
//   const FlutterCourseDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Material App Bar'),
//         ),
//         body: const Center(
//           child: Text('Hello World'),
//         ),
      
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class FlutterCourseDetails extends StatelessWidget {
//   const FlutterCourseDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kursus Flutter Asas'),
//         backgroundColor: Colors.blueAccent,
//         centerTitle: true,
//       ),
//       body: const Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Text(
//           'Selamat datang ke Kursus Flutter Asas. Dalam kursus ini, '
//           'anda akan belajar cara membina aplikasi mudah alih menggunakan Flutter.',
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class FlutterCourseDetails extends StatelessWidget {
  const FlutterCourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kursus Flutter Asas'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/jata.png'), // Gambar kursus
            const SizedBox(height: 16.0), // Space antara gambar dan text
            const Text(
              'Selamat datang ke Kursus Flutter Asas. Dalam kursus ini, '
              'anda akan belajar cara membina aplikasi mudah alih menggunakan Flutter.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
