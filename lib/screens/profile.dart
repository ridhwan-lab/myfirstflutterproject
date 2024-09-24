// import 'package:flutter/material.dart';



// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         appBar: AppBar(
//           title: const Text('Profile'),
//         ),
//         body: const Center(
//           child: Text('Hello World'),
//         ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Align(
//         alignment: Alignment.centerLeft, // Align the title to the left
//         child: Text('Profile'),
//       ),
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       foregroundColor: Theme.of(context).colorScheme.onPrimary,
//     ),
//     body: const Center(
//       child: Text('Hello World'),
//     ),
//   );
// }

// }


import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Profile'),
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                minRadius: 50,
              ),
              const SizedBox(height: 10),
              const Text(
                'Online',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Display Name
              const Text(
                'Name: John Doe', // Replace with actual name
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // Display Address
              const Text(
                'Address: 123 Main St, City, State', // Replace with actual address
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),

              // Display Email
              const Text(
                'Email: johndoe@example.com', // Replace with actual email
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


}

