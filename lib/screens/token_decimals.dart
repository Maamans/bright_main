import 'package:bright/screens/token_price.dart';
import 'package:flutter/material.dart';

class TokenDecimal extends StatefulWidget {
  const TokenDecimal({Key? key});

  @override
  State<TokenDecimal> createState() => _TokenDecimalState();
}

class _TokenDecimalState extends State<TokenDecimal> {
  String _decimals = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            const Text(
              'Token Creation',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            const Text(
              'Create your Tokens to raise funds',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black38),
            ),
            SizedBox(height: 50),
            Text('Decimals*', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Decimals',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _decimals = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Enter the number of decimal places for your token. This determines the precision of your token values.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 270),
            Center(
              child: SizedBox(
                width: 430,
                height: 50,
                child: TextButton(
                  onPressed: _decimals.isNotEmpty ? () {
                     Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TokenPrice()),
      );
                  } : null,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green,
                  ),
                  child: Text('Next'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
