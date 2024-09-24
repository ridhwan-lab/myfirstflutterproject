// import 'package:flutter/material.dart';


// class Courses extends StatelessWidget {
//   const Courses({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Senarai Kursus'),
//         ),
//         body: const Center(
//           child: Text('Hello World'),
//         ),
    
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/screens/flutter_course_details.dart';

class CoursesChatgpt extends StatelessWidget {
  const CoursesChatgpt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Senarai Kursus'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Action bila tekan search icon
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          itemExtent: 70,
          children: [
            ListTile(
              leading: const Icon(Icons.book, color: Colors.blue),
              title: const Text('Kursus Flutter Asas'),
              subtitle: const Text('Belajar asas Flutter'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate ke screen baru
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FlutterCourseDetails(),
                  ),
                );
              },
            ),
            const ListTile(
              leading: Icon(Icons.book, color: Colors.blue),
              title: Text('Kursus React Native'),
              subtitle: Text('Mobile app development'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.book, color: Colors.blue),
              title: Text('Kursus Laravel'),
              subtitle: Text('Backend development with Laravel'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.book, color: Colors.blue),
              title: Text('Kursus UI/UX Design'),
              subtitle: Text('Basic user interface design principles'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.book, color: Colors.blue),
              title: Text('Kursus Python AI'),
              subtitle: Text('Introduction to AI with Python'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.book, color: Color.fromARGB(255, 2, 154, 10)),
              title: Text('Kursus Jenazah'),
              subtitle: Text('Introduction to Kursus Pengendalian Jenazah'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.book, color: Color.fromARGB(255, 176, 2, 80)),
              title: Text('Kursus Renang'),
              subtitle: Text('Swimming From Zero to Hero'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
