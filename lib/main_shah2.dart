import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/screens/courses.dart';
import 'package:myfirstflutterproject/screens/courses_chatgpt.dart';
import 'package:myfirstflutterproject/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Flutter Demo Home Page'),
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center vertically
      crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
      children: [
      // Menggunakan SizedBox untuk menetapkan saiz gambar
          SizedBox(
            width: 260, // Lebar gambar
            height: 200, // Tinggi gambar
            child: Image.asset(
              'assets/images/jata.png',
              fit: BoxFit.cover, // Mengisi ruang dengan cara yang sesuai
            ),
          ),
          const SizedBox(height: 60), // Gap between image and buttons

        // Center( // Centering the button horizontally
          ElevatedButton(
            onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            child: const Text('Profile'),
          ),
        // ),
        const SizedBox(height: 10), // Gap between buttons
        Center( // Centering the button horizontally
          child: ElevatedButton(
            // onPressed: () {},
            onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const Courses()));
            },
            child: const Text('Senarai Kursus List Builder'),
          ),
        ),
        
        const SizedBox(height: 10), // Gap between buttons

         ElevatedButton(
            onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const CoursesChatgpt()));
            },
            child: const Text('Senarai Kursus ChatGPT'),
          ),
      ],
    ),
  );
}



}