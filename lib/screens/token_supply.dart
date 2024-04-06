import 'package:bright/screens/token_decimals.dart';
import 'package:flutter/material.dart';

class TokenSupply extends StatefulWidget {
  const TokenSupply({super.key});

  @override
  State<TokenSupply> createState() => _TokenSupplyState();
}

class _TokenSupplyState extends State<TokenSupply> {
  String _tokenSupply = '';
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
            Text('Token Supply*', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Supply',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _tokenSupply = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Enter the quantity of tokens that will be issued. This represents the total supply of your token.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 270),
            Center(
              child: SizedBox(
                width: 430,
                height: 50,
                child: TextButton(
                  onPressed: _tokenSupply.isNotEmpty ? () {
                      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TokenDecimal()),
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