/*
 *
 * ----------------
 * | 241030072002 |
 * ----------------
 * Copyright © [2023] KERO CS FLUTTER DEVELOPMENT.
 * All Rights Reserved. For inquiries or permissions, contact  me ,
 * https://www.linkedin.com/in/kerolos-fady-software-engineer/
 *
 * /
 */

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPadding = true;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Center(
            child: Text(
              'Padding vs Margin',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * .25,
                    width: width * .35,
                    color: Colors.amber,
                  ),
                  Container(
                    height: height * .25,
                    width: width * .35,
                    color: Colors.red,
                    padding: isPadding == true
                        ? const EdgeInsets.all(16)
                        : const EdgeInsets.all(0),
                    margin: isPadding == false
                        ? const EdgeInsets.all(16)
                        : const EdgeInsets.all(0),
                    child: Container(
                      height: height * .25,
                      width: width * .35,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
              Container(
                height: height * .25,
                width: width * .35,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 187, 162),
                  ),
                  onPressed: () {
                    setState(() {
                      isPadding = !isPadding;
                    });
                  },
                  child: const Text('Swap betwen Padding or Margin'),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                isPadding == true ? 'Padding' : "Margin",
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
