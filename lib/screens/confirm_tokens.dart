import 'package:bright/screens/payement.dart';
import 'package:flutter/material.dart';

class ConfirmTokens extends StatefulWidget {
  const ConfirmTokens({Key? key}) : super(key: key);

  @override
  State<ConfirmTokens> createState() => _ConfirmTokensState();
}

class _ConfirmTokensState extends State<ConfirmTokens> {
  String enteredAmount = '';
  int walletBalance = 20000;

  void addToAmount(String digit) {
    setState(() {
      enteredAmount += digit;
    });
  }

  void removeLastDigit() {
    setState(() {
      if (enteredAmount.isNotEmpty) {
        enteredAmount = enteredAmount.substring(0, enteredAmount.length - 1);
      }
    });
  }

  void navigateToNextScreen() {
    int amount = int.tryParse(enteredAmount) ?? 0;
    if (amount > walletBalance) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Insufficient Funds'),
            content: Text('Your wallet balance is not enough for this transaction.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Navigate to the next screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Confirm Transaction',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter Your 4-digit pin to confirm this transactions',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                          '\$20.0',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: const Color.fromARGB(137, 72, 70, 70)),
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
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
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
                        Text(
                          'Payement',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: 200,
                  height: 33,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 231, 238, 231),
                  ),
                  child: Text(
                    'Wallet Balance: Le$walletBalance',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Enter Amount:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  enteredAmount,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildNumberButton('1'),
                          SizedBox(width: 119,),
                          buildNumberButton('2'),
                          SizedBox(width: 119,),
                          buildNumberButton('3'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildNumberButton('4'),
                           SizedBox(width: 119,),
                          buildNumberButton('5'),
                           SizedBox(width: 119,),
                          buildNumberButton('6'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildNumberButton('7'),
                          SizedBox(width: 119,),
                          buildNumberButton('8'),
                          SizedBox(width: 119,),
                          buildNumberButton('9'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.backspace),
                            onPressed: removeLastDigit,
                          ),
                          SizedBox(width: 119),
                          buildNumberButton('0'),
                           SizedBox(width: 119),

                        IconButton(
  icon: Icon(Icons.check),
  onPressed: () {
    int amount = int.tryParse(enteredAmount) ?? 0;
    if (amount > walletBalance) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Insufficient Funds'),
            content: Text('Your wallet balance is not enough for this transaction.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MakePayement(amount: amount)),
      );
    }
  },
),


                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
               
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildNumberButton(String digit) {
    return GestureDetector(
      onTap: () => addToAmount(digit),
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
