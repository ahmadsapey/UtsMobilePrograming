import 'package:flutter/material.dart';
import 'package:nama_projek_kamu/uts/daftar.dart';
import 'package:nama_projek_kamu/uts/transaksi.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset('gambar/logo.png', height: 150),
              const SizedBox(height: 30),

              // LKS MART
              const Text(
                'LKS MART',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 30),

              // Username TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Password TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {

                    // transaksi
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Transaksi()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Link
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) =>  daftarPage()),
                    );
                  },
                  child: const Text('Acan punya akun? Klik didie'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
