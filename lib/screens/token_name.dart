import 'package:bright/screens/token_symbol.dart';
import 'package:flutter/material.dart';

class TokenName extends StatefulWidget {
  const TokenName({Key? key, String? imageUrl}) : super(key: key);

  @override
  State<TokenName> createState() => _TokenNameState();
}

class _TokenNameState extends State<TokenName> {
  String _tokenName = '';

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
            Text('TokenName*', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _tokenName = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Enter the name of your token. This could be the project name, company name, or any suitable name for your token.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 270),
            Center(
              child: SizedBox(
                width: 430,
                height: 50,
                child: TextButton(
                  onPressed: _tokenName.isNotEmpty ? () {
                    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TokenSymbol()),
      );
                    // Add your functionality here
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
