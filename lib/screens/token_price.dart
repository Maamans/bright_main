import 'package:bright/screens/token_para.dart';
import 'package:flutter/material.dart';

class TokenPrice extends StatefulWidget {
  const TokenPrice({Key? key});

  @override
  State<TokenPrice> createState() => _TokenPriceState();
}

class _TokenPriceState extends State<TokenPrice> {
  String _tokenPrice = '';

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
            Text('Token Price*', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Price',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _tokenPrice = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Enter the price of each token. This represents the value of each individual token.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 270),
            Center(
              child: SizedBox(
                width: 430,
                height: 50,
                child: TextButton(
                  onPressed: _tokenPrice.isNotEmpty ? () {
                   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TokenParameters(onParametersEntered: (String parameters) {  },)),
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
