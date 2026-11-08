import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Profil',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final String userName = 'Angger Santiko, S.Muda';
  final String userRole = 'Electrical Engineer';
  final String email = 'angger@email.com';
  final String phoneNumber = '+62 8231 4946 902';
  final String instagram = 'nggersa';
  final String linkedin = 'angger-santiko';

  final List<String> experiences = const [
    'Supervisor Engineering - PT TOP MOST ROBOTICS INDONESIA',
    'Analysis Market - PT SANTIKO TEKNOLOGI INDONESIA',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  userRole,
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Fitur Edit belum aktif pada modul statis.'),
                  ),
                );
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profil'),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 24,
                runSpacing: 8,
                children: const [
                  StatItem(count: '15', label: 'Proyek'),
                  StatItem(count: '1.2k', label: 'Followers'),
                  StatItem(count: '500', label: 'Following'),
                ],
              ),
            ),

            const SizedBox(height: 24),
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.contact_mail, color: Colors.blueAccent),
                        SizedBox(width: 8),
                        Text(
                          'Kontak',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ListTile(
                      leading: const Icon(
                        Icons.email,
                        color: Colors.blueAccent,
                      ),
                      title: const Text('Email'),
                      subtitle: Text(
                        email,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.blueAccent,
                      ),
                      title: const Text('Telepon'),
                      subtitle: Text(
                        phoneNumber,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.camera_alt,
                        color: Colors.blueAccent,
                      ),
                      title: const Text('Instagram'),
                      subtitle: Text(
                        instagram,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.work, color: Colors.blueAccent),
                      title: const Text('LinkedIn'),
                      subtitle: Text(
                        linkedin,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Judul Pengalaman Kerja
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pengalaman Kerja',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            const Divider(),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: experiences.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 6.0),
                  child: ListTile(
                    leading: const Icon(Icons.work, color: Colors.blueAccent),
                    title: Text(experiences[index]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String count;
  final String label;

  const StatItem({super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
      ],
    );
  }
}
