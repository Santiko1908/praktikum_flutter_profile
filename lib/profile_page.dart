import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, size: 70, color: Colors.white),
              ),

              const SizedBox(height: 20),

              const Text(
                'Angger Santiko',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Text(
                'Mahasiswa Teknik Informatika',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              const SizedBox(height: 25),

              const ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('Email'),
                subtitle: Text('angger@email.com'),
              ),

              const ListTile(
                leading: Icon(Icons.school, color: Colors.blue),
                title: Text('Program Studi'),
                subtitle: Text('Teknik Informatika'),
              ),

              const ListTile(
                leading: Icon(Icons.location_on, color: Colors.blue),
                title: Text('Alamat'),
                subtitle: Text('Indonesia'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
