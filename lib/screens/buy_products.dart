import 'package:bright/model/food_item.dart';
import 'package:bright/screens/markets.dart';
import 'package:bright/screens/oppor_funds.dart';
import 'package:bright/screens/prices.dart';
import 'package:bright/screens/proceed_payement.dart';
import 'package:bright/screens/tokens.dart';
import 'package:flutter/material.dart';

class BuyProducts extends StatefulWidget {
  const BuyProducts({Key? key, required this.item}) : super(key: key);

  final FoodItem item;

  @override
  State<BuyProducts> createState() => _BuyProductsState();
}

class _BuyProductsState extends State<BuyProducts> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Handle profile icon pressed
            },
          ),
        ],
        title: const Text(
          'Welcome Farmer Abu',
          style: TextStyle(color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.green,
            height: 2.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('George Mackali'),
              accountEmail: Text('Georgemackali@gmail.com'),
              currentAccountPicture: CircleAvatar(),
              decoration: BoxDecoration(
          color: Colors.green, // Change the background color of the header to green
        ),
            ),
            ListTile(
              leading: Icon(Icons.view_agenda),
              title: Text('Upload New Products'),
              onTap: () {
                print('upload successfully');
              },
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text('Upload your file'),
              onTap: () {
                print('upload successfully');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('View Your Profile'),
              onTap: () {
                print('upload successfully');
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Shared your file'),
              onTap: () {
                print('shared successfully');
              },
            ),
            ListTile(
              leading: Icon(Icons.notification_add),
              title: Text('please view your notifications'),
              onTap: () {
                print('view notifications successfully');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('edit your settings'),
              onTap: () {
                print(' successfully edited');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                print(' successfully Log out');
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 240,
                child: Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    // Handle button press
                                  },
                                  child: Text('Home',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 17)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Deliver to'),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Blessing Ivan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Metchem Goderich'),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Freetown Sierra Leone'),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Phone: 797638255'),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press
                              },
                              child: const Text('Change/add Address',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 17)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Available offer(cupon code)'),
                  SizedBox(
                    width: 85,
                  ),
                  Icon(Icons.arrow_back_ios)
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Sub Total'),
                SizedBox(
                  width: 85,
                ),
                Row(
                  children: [
                    Text(
                      'Le',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('250'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Delivary'),
                SizedBox(
                  width: 85,
                ),
                Row(
                  children: [
                    Text(
                      'Le',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('50'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 85,
                ),
                Row(
                  children: [
                    Text(
                      'Le',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('300'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Available offer(cupon code)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.green,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 430,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProceedPayement()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: const Text(
                  'Proceed to Payement',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
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
