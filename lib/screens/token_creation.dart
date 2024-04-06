import 'dart:html' as html;

import 'package:bright/screens/token_name.dart';
import 'package:flutter/material.dart';

class TokensCreation extends StatefulWidget {
  const TokensCreation({Key? key}) : super(key: key);

  @override
  State<TokensCreation> createState() => _TokensCreationState();
}

class _TokensCreationState extends State<TokensCreation> {
  String? _imageUrl;

  Future<void> _getImage() async {
    final html.FileUploadInputElement input = html.FileUploadInputElement();
    input.accept = 'image/*';
    input.click();

    input.onChange.listen((event) {
      final file = input.files!.first;
      final reader = html.FileReader();
      reader.readAsDataUrl(file);
      reader.onLoadEnd.listen((loadEndEvent) {
        setState(() {
          _imageUrl = reader.result as String?;
        });
      });
    });
  }

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
            SizedBox(height: 20),
            GestureDetector(
              onTap: _getImage,
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[200],
                child: _imageUrl != null
                    ? Image.network(
                        _imageUrl!,
                        fit: BoxFit.cover,
                      )
                    : Center(child: Icon(Icons.camera_alt)),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Upload Image',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Uploaded an image that will represent your \n token, this could be the company ogo, crop image, \n or any appropriate image',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 230),
            Center(
              child: SizedBox(
                width: 450,
                height: 50,
                child: TextButton(
                  onPressed: _imageUrl != null
                      ? () {
                         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TokenName()),
      );
                      }
                      : null, // Only enable button if image is uploaded
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
