import 'package:flutter/material.dart';

class Selanjutnya extends StatelessWidget {
  const Selanjutnya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
              'Detail Informasi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            itemProfile(
              'About',
              'Perkenalkan, nama saya Hirzi Dian Alfianzah, seorang siswa kelas 12 di SMK Wikrama Bogor. Saya mengambil jurusan PPLG (Pengembangan Perangkat Lunak dan Gim), di mana saya terus mengasah keterampilan dalam bidang pengembangan perangkat lunak dan game. ',
              Icons.person,
            ),
            const SizedBox(height: 10),
            itemProfile(
              'History',
              'Saya mengawali pendidikan di SD Negeri 01 Cigombong, kemudian melanjutkan ke SMP Negeri 01 Cigombong. Setelah menyelesaikan pendidikan dasar dan menengah, saya meneruskan studi ke SMK Wikrama Bogor, di mana saya mendapatkan keterampilan dan pengetahuan yang lebih mendalam di bidang kejuruan.',
              Icons.history,
            ),
            const SizedBox(height: 10),
            itemProfile(
              'Skill',
              '- HTML\n- CSS\n- Bootstrap\n- JavaScript\n- React\n- Tailwind\n- Git',
              Icons.code, // Menggunakan icon yang lebih sesuai
            ),
          ],
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(iconData, size: 40, color: Colors.deepOrange),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
