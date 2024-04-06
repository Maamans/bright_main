import 'package:bright/screens/pin.dart';
import 'package:flutter/material.dart';

class MakePayement extends StatefulWidget {
  final int amount;

  const MakePayement({Key? key, required this.amount}) : super(key: key);

  @override
  State<MakePayement> createState() => _MakePayementState();
}

class _MakePayementState extends State<MakePayement> {
  final TextEditingController _narrationController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _narrationController.addListener(_checkInput);
  }

  @override
  void dispose() {
    _narrationController.dispose();
    super.dispose();
  }

  void _checkInput() {
    setState(() {
      _isButtonEnabled = _narrationController.text.length > 5;
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Enter Naration',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Enter a descriptive naration of your \n transaction')
              ],
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 470, // Set the width of the card
                height: 300, // Set the height of the card
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$${widget.amount.toDouble()}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: const Color.fromARGB(137, 72, 70, 70)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Recipients',
                      style: TextStyle(color: Colors.green),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 60,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(1),
                            child: Image.asset(
                              'images/farm1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Agripin',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Colors.green),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Agric for all services Limited',
                              style: TextStyle(color: Colors.black54),
                            ),
                            Text(
                              'Get 20% of Farm Harvest when Invested',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          '\$100',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Narration',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Narration',
              style: TextStyle(color: Colors.green),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: _narrationController,
              decoration: InputDecoration(
                hintText: 'Enter narration...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _isButtonEnabled
                        ? () {
        Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => EnterPin(amount: widget.amount),
  ),
);

                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Background color
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
