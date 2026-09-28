import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Saya',
      theme: ThemeData(
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF007F68),
        ),
        useMaterial3: true,
      ),
      home: const ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  static const Color hijau = Color(0xFF007F68);
  static const Color hijauTua = Color(0xFF006F5B);
  static const Color krem = Color(0xFFEAF2D5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7F4),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: Column(
            children: [
              const Text(
                'Profil Saya',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 35),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    // =========================
                    // HEADER KARTU
                    // =========================
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(
                        20,
                        48,
                        20,
                        52,
                      ),
                      color: hijauTua,
                      child: Column(
                        children: [
                          const Text(
                            'K A R T U  M A H A S I S W A',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                            ),
                          ),

                          const SizedBox(height: 38),

                          // Icon profil
                          Container(
                            width: 140,
                            height: 140,
                            decoration: const BoxDecoration(
                              color: krem,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.person_outline,
                              size: 75,
                              color: hijau,
                            ),
                          ),

                          const SizedBox(height: 35),

                          const Text(
                            'Rakha Cakrabirawa',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 12),

                          const Text(
                            'Mahasiswa TRM',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // =========================
                    // INFORMASI MAHASISWA
                    // =========================
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        42,
                        42,
                        42,
                        30,
                      ),
                      child: Column(
                        children: [
                          _InfoItem(
                            icon: Icons.school_outlined,
                            title: 'PROGRAM STUDI',
                            value: 'Teknologi Rekayasa Multimedia',
                          ),

                          const SizedBox(height: 35),

                          _InfoItem(
                            icon: Icons.menu_book_outlined,
                            title: 'SEMESTER',
                            value: 'Semester 6',
                          ),

                          const SizedBox(height: 35),

                          const Divider(
                            color: Colors.black12,
                            thickness: 1,
                          ),

                          const SizedBox(height: 40),

                          // =========================
                          // HELLO FLUTTER
                          // =========================
                          const Text(
                            'Halo Flutter!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: hijau,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 18),

                          const Text(
                            'Langkah pertama saya belajar\n'
                            'membuat aplikasi mobile.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),

                          const SizedBox(height: 35),

                          // =========================
                          // BUTTON SAPA
                          // =========================
                          SizedBox(
                            width: double.infinity,
                            height: 65,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Halo! 👋',
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.waving_hand_outlined,
                                size: 28,
                              ),
                              label: const Text(
                                'Sapa',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: hijau,
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(22),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget untuk informasi mahasiswa
class _InfoItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InfoItem({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    const Color hijau = Color(0xFF007F68);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: hijau,
          size: 38,
        ),

        const SizedBox(width: 24),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 15,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                value,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}