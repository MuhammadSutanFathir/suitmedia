import 'package:flutter/material.dart';
import 'package:suite_media/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _palindromeController = TextEditingController();
  String _result = '';

  bool isPalindrome(String text) {
    String cleanedText = text.replaceAll(RegExp(r'\W+'), '').toLowerCase();
    String reversedText = cleanedText.split('').reversed.join('');
    return cleanedText == reversedText;
  }

  void _checkPalindrome() {
    setState(() {
      if (isPalindrome(_palindromeController.text)) {
        _result = 'Is Palindrome';
      } else {
        _result = 'Not Palindrome';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 116,
                  height: 116,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person_add_alt_1,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 310,
                  height: 47,
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.black38),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 310,
                  height: 47,
                  child: TextField(
                    controller: _palindromeController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      labelText: 'Palindrome',
                      labelStyle: TextStyle(color: Colors.black38),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 310,
                  height: 47,
                  child: ElevatedButton(
                    onPressed: _checkPalindrome,
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2B637B),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'CHECK',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 310,
                  height: 47,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2B637B),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'NEXT',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  _result,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
