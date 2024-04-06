import 'package:bright/screens/create_token.dart';
import 'package:flutter/material.dart';

class TokenParameters extends StatefulWidget {
  final void Function(String parameters) onParametersEntered;

  const TokenParameters({Key? key, required this.onParametersEntered}) : super(key: key);

  @override
  State<TokenParameters> createState() => _TokenParametersState();
}

class _TokenParametersState extends State<TokenParameters> {
  String _tokenParameters = '';

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
            Text('Token Parameters*', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Parameters',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _tokenParameters = value;
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              'Enter the parameters for your token. This could include any additional information or specifications for your token.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 270),
            Center(
              child: SizedBox(
                width: 430,
                height: 50,
                child: TextButton(
  onPressed: _tokenParameters.isNotEmpty ? () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateToken(
          imageUrl: null, // Pass any necessary data to CreateToken
        ),
      ),
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
