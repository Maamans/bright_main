import 'package:bright/screens/token_supply.dart';
import 'package:flutter/material.dart';

class TokenDescription extends StatefulWidget {
  const TokenDescription({Key? key});

  @override
  State<TokenDescription> createState() => _TokenDescriptionState();
}

class _TokenDescriptionState extends State<TokenDescription> {
  String _tokenDescription = '';

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
            Text('Token Description*', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _tokenDescription = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Enter the description of your token. This should provide details about your token and its purpose and as well what the amount of percentage the investors get from the products for each tokens bought.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 270),
            Center(
              child: SizedBox(
                width: 430,
                height: 50,
                child: TextButton(
                  onPressed: _tokenDescription.isNotEmpty ? () {
                   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TokenSupply()),
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
