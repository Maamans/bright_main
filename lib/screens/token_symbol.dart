import 'package:bright/screens/token_desc.dart';
import 'package:flutter/material.dart';

class TokenSymbol extends StatefulWidget {
  const TokenSymbol({Key? key});

  @override
  State<TokenSymbol> createState() => _TokenSymbolState();
}

class _TokenSymbolState extends State<TokenSymbol> {
  String _tokenSymbol = '';

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
            Text('Token Symbol*', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Symbol',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _tokenSymbol = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Enter the symbol of your token. This should be a unique symbol to represent your token.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 270),
            Center(
              child: SizedBox(
                width: 430,
                height: 50,
                child: TextButton(
                  onPressed: _tokenSymbol.isNotEmpty ? () {
                   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TokenDescription()),
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
