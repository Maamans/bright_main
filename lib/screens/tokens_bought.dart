import 'package:flutter/material.dart';

class TokensBought extends StatefulWidget {
  const TokensBought({Key? key}) : super(key: key);

  @override
  State<TokensBought> createState() => _TokensBoughtState();
}

class _TokensBoughtState extends State<TokensBought> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            color: Colors.green,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
  shape: RoundedRectangleBorder(
    side: BorderSide(color: Colors.green, width: 2),
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    children: [],
  ),
),

          ],
        ),
      ),
    );
  }
}
