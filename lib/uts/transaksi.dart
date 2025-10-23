import 'package:flutter/material.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({super.key});

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
              Image.asset('gambar/gudang.png', height: 150),
              const SizedBox(height: 30),

              // LKS MART
              const Text(
                'LKS MART PRODUK',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 30),

              // Prodak list
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    // Gambar
                    Image.asset(
                      'gambar/001.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 16),

                    // penambahan keterangan
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Es Kopi',
                            style: TextStyle(
                              fontSize: 24, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Rp 10.000',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //  Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (_) => LoginPage()),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'BAAYARR',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height:12),
            ],
          ),
        ),
      ),
    );
  }
}
