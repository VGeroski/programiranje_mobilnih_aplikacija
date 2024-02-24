import 'package:flutter/material.dart';
import 'category_list_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              // pozadina
              Opacity(
                opacity: 0.6,
                child: Image.asset(
                  'lib/images/background.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
              ),

              // centrirana kolona - ikonica, tekst, 2 dugmeta
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ikonica
                    Container (
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.store, color: Colors.white, size: 100),
                    ),

                    const SizedBox(height: 20),
                    // tekst
                    const Text('P R O D A V N I C A',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    const SizedBox(height: 100),
                    // dugme - start
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CategoryListPage()));
                      },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text('S T A R T',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // dugme - login
                    Container(
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text('L O G  I N',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
