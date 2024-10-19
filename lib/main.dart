import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selanjutnya.dart';
import 'form_screen.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String email;
  final String alamat;
  final String role;
  final String deskripsi;

  const ProfileScreen({
    Key? key,
    required this.name,
    required this.email,
    required this.alamat,
    required this.role,
    required this.deskripsi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(  // Gunakan SafeArea untuk melindungi konten dari area sistem
        child: SingleChildScrollView( // Bungkus konten dengan SingleChildScrollView
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/profil.jpg'),
                ),
                const SizedBox(height: 20),
                itemProfile('Nama', name, CupertinoIcons.person),
                const SizedBox(height: 10),
                itemProfile('Role', role, CupertinoIcons.briefcase),
                const SizedBox(height: 10),
                itemProfile('Alamat', alamat, CupertinoIcons.location),
                const SizedBox(height: 10),
                itemProfile('Deskripsi', deskripsi, CupertinoIcons.text_justifyleft),
                const SizedBox(height: 10),
                itemProfile('Email', email, CupertinoIcons.mail),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Selanjutnya(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Text('Selengkapnya'),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Text('Logout'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Colors.black.withOpacity(.1), // Kurangi intensitas warna shadow
            spreadRadius: 1, // Kurangi spreadRadius agar tidak terlalu lebar
            blurRadius: 5, // Kurangi blurRadius untuk mengurangi efek shadow
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
