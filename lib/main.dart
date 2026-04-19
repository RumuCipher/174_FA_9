import 'package:flutter/material.dart';

void main() {
  runApp(IdCardApp());
}

class IdCardApp extends StatelessWidget {
  const IdCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IdCardPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
      ),
    );
  }
}

class IdCardPage extends StatelessWidget {
  const IdCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Digital Id Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 58,
                backgroundColor: Colors.grey.shade400,
                child: ClipOval(
                  child: Transform.scale(
                    scale: 1.6,
                    child: Image.asset(
                      'assets/images/avatar.jpeg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                      alignment: Alignment(0, -1),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Rubaiya Haque Rumu',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              const Text(
                'Batch: 63rd, Department of CSE',
                style: TextStyle(color: Color.fromARGB(255, 100, 100, 100)),
              ),

              const SizedBox(height: 15),

              const Divider(
                thickness: 4,
                color: Colors.grey,
              ),

              const SizedBox(height: 10),

              buildInfoRow(Icons.person, 'ID: 0182410012101174'),
              buildInfoRow(Icons.email, 'Email: haquerumu174@gmail.com'),
              buildInfoRow(Icons.phone, 'Phone: 0186492964283'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildInfoRow(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsetsGeometry.symmetric(vertical: 6),
    child: Row(
      children: [
        Icon(icon, color: Colors.grey.shade700),
        const SizedBox(width: 10),
        Text(text),
      ],
    ),
  );
}
