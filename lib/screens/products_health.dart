import 'package:bright/model/food_item.dart';
import 'package:bright/screens/markets.dart';
import 'package:bright/screens/oppor_funds.dart';
import 'package:bright/screens/prices.dart';
import 'package:bright/screens/tokens.dart';
import 'package:bright/screens/view_ananysis.dart';
import 'package:flutter/material.dart';

class ProductsHealth extends StatefulWidget {
  final FoodItem item;

  const ProductsHealth({Key? key, required this.item}) : super(key: key);

  @override
  State<ProductsHealth> createState() => _ProductsHealthState();
}

class _ProductsHealthState extends State<ProductsHealth> {
  late String currentTime;
   int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    currentTime = _getCurrentTime();

    _updateTime();
  }

  void _updateTime() {
    Future.delayed(Duration(minutes: 1), () {
      setState(() {
        currentTime = _getCurrentTime();
      });
      _updateTime();
    });
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    String period = now.hour < 12 ? 'AM' : 'PM';
    int hour = now.hour > 12 ? now.hour - 12 : now.hour;
    return '$hour:${now.minute} $period';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Text(
              currentTime,
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            const Icon(Icons.network_cell, color: Colors.white),
            const SizedBox(width: 8),
            const Icon(Icons.network_wifi, color: Colors.white),
          ],
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            // Handle profile icon pressed
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Handle menu icon pressed
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.green,
            height: 2.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Product Health Status',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 300, // Adjust height as needed
                          child: Image.asset(
                            widget.item.image, // Use the passed image path
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.item.name,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Uploaded',
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                '4pm: 12/10/2022',
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '18',
                                      style: TextStyle(
                                          color: Colors
                                              .blue), // Set text color to blue
                                    ),
                                    WidgetSpan(
                                      child: Transform.translate(
                                        offset: const Offset(0, -5),
                                        child: Text(
                                          '\u00B0C', // Unicode for the degree symbol
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                           const   Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                   Text(
                                    'Quantity',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                   
                                  Text(
                                    '50000 kg',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                             const SizedBox(height: 4,), 
                              const Text(
                                'Percentage Health Rate',
                                style: TextStyle(fontSize: 14),
                              ),
                              const Text(
                                '40%',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 200, // Set the width of the button
                        height: 50, // Set the height of the button
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Handle red button press
                            },
                            child: const Text(
                              'Dispose Products',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200, // Set the width of the button
                        height: 50, // Set the height of the button
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              
Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  ViewAnalysis()),
                      );                            },
                            child: const Text(
                              'View Analysis',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // Check if the last item is selected
          if (index == 2) {
            // Navigate to SignUp screen
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const OpportunitiesFunds()),
            );
          } else if (index == 0) {
            // Navigate to SignUp screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AccessTokens()),
            );
          } else if (index == 1) {
            // Navigate to SignUp screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MarketPlace()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.token),
            label: 'AccessTokens',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Close Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Opportunities/Funds',
          ),
        ],
      ),
    );
  }
}
