import 'package:bright/screens/main_page.dart';
import 'package:bright/screens/send_again.dart';
import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Align content at the top
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 130), // Reduce space between top and image
              child: Image.asset(
                'images/brig.jpeg',
                width: 270,
                height: 100,
              ),
            ),
            const SizedBox(
                height: 100.0), // Reduce space between image and text
            const Text(
              'Enter OTP',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(height: 15.0), // Reduce space between text and text
            const Text(
              'Please enter the OTP we just sent \n        on your registered email \n               phone number  ',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            const SizedBox(height: 25.0), // Reduce space between text and row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNumberContainer('1'),
                const SizedBox(width: 5),
                _buildNumberContainer('2'),
                const SizedBox(width: 5),
                _buildNumberContainer('3'),
                const SizedBox(width: 5),
                _buildNumberContainer('4'),
                const SizedBox(width: 5),
                _buildNumberContainer('5'),
              ],
            ),
            const SizedBox(height: 45.0), // Reduce space between text and text
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'we have sent a verification code to your  \n        email  ',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'joe*******@gmail.com ',
                    style: TextStyle(fontSize: 16.0, color: Colors.green),
                  ),
                  TextSpan(
                    text: 'or number ',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  TextSpan(
                    text: '0798*******',
                    style: TextStyle(fontSize: 16.0, color: Colors.green),
                  ),
                  TextSpan(
                    text: '.\n               Please check your inbox  ',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Din\'t receive a code? ',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SendAgain()),
                    );
                  },
                  child: const Text(
                    'Send again',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 50,
            ),

            SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: const Text(
                  'Verify',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildNumberContainer(String number) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.black, width: 2.0),
      ),
      child: Center(
        child: Text(
          number,
          style: const TextStyle(color: Colors.black, fontSize: 16.0),
        ),
      ),
    );
  }
}
