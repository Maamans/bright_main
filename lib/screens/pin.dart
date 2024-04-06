import 'package:bright/screens/tokens_bought.dart';
import 'package:flutter/material.dart';

class EnterPin extends StatefulWidget {
  final int amount;

  const EnterPin({Key? key, required this.amount}) : super(key: key);

  @override
  State<EnterPin> createState() => _EnterPinState();
}

class _EnterPinState extends State<EnterPin> {
  String enteredPin = '';

  void addToPin(String digit) {
    setState(() {
      if (enteredPin.length < 9) {
        enteredPin += digit;
      }
    });
  }

  void removeLastDigit() {
    setState(() {
      if (enteredPin.isNotEmpty) {
        enteredPin = enteredPin.substring(0, enteredPin.length - 1);
      }
    });
  }

  void navigateToNextScreen() {
    if (enteredPin == '13416') {
      // Navigate to the next screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TokensBought()),
      );
    } else {
      // Show a notification that the password is wrong
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Wrong password. Please try again.'),
        ),
      );
    }
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
                  'Confirm Transaction',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Enter your 4-digit pin to confirm this \n transaction')
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
                        Container(
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
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Blessings Ivan',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '@blessingsivan.bright.tech',
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
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    enteredPin,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNumberButton('1'),
                buildNumberButton('2'),
                buildNumberButton('3'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNumberButton('4'),
                buildNumberButton('5'),
                buildNumberButton('6'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNumberButton('7'),
                buildNumberButton('8'),
                buildNumberButton('9'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.backspace),
                  onPressed: removeLastDigit,
                ),
                buildNumberButton('0'),
                IconButton(
                  icon: Icon(Icons.check),
                  onPressed: enteredPin.length >= 5 ? navigateToNextScreen : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNumberButton(String digit) {
    return GestureDetector(
      onTap: () => addToPin(digit),
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          digit,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

