
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// TEMA WARNA
const Color biruPersib = Color(0xFF0756A5);
const Color background = Color(0xFFF2F5F9);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Persib Bandung',

      // THEME GLOBAL
      theme: ThemeData(
        primaryColor: biruPersib,
        scaffoldBackgroundColor: background,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: biruPersib,
        ),
      ),

      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: biruPersib,
        title: const Text(
          'PERSIB BANDUNG',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.sports_soccer,
          color: Colors.white,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // GAMBAR PERSIB
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/persib.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // NAMA KLUB
            const Text(
              'Persib Bandung',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: biruPersib,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'Maung Bandung • Pangeran Biru',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            // DESKRIPSI
            Card(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tentang Persib',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Persib Bandung merupakan klub sepak bola '
                      'kebanggaan masyarakat Jawa Barat. '
                      'Persib memiliki sejarah panjang dan '
                      'dukungan luar biasa dari para Bobotoh.',
                      style: TextStyle(
                        fontSize: 13,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // INFORMASI KLUB
            const Text(
              'Informasi Klub',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Card(
              color: Colors.white,
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.calendar_today,
                      color: biruPersib,
                    ),
                    title: Text('Berdiri'),
                    subtitle: Text('14 Maret 1933'),
                  ),

                  Divider(height: 1),

                  ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: biruPersib,
                    ),
                    title: Text('Kota'),
                    subtitle: Text('Bandung, Jawa Barat'),
                  ),

                  Divider(height: 1),

                  ListTile(
                    leading: Icon(
                      Icons.stadium,
                      color: biruPersib,
                    ),
                    title: Text('Stadion'),
                    subtitle: Text('Stadion Gelora Bandung Lautan Api'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // KEISTIMEWAAN
            const Text(
              'Identitas Persib',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(12),
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.groups,
                          color: biruPersib,
                          size: 35,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Bobotoh',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Suporter',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(12),
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.emoji_events,
                          color: biruPersib,
                          size: 35,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Prestasi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Sepak Bola',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // FOOTER
            const Center(
              child: Text(
                'Viking & Bobotoh - Salam Satu Jiwa!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: biruPersib,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}