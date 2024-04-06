import 'package:bright/screens/markets.dart';
import 'package:bright/screens/oppor_funds.dart';
import 'package:bright/screens/prices.dart';
import 'package:bright/screens/tokens.dart';
import 'package:flutter/material.dart';

class LearnMore extends StatefulWidget {
  const LearnMore({super.key});

  @override
  State<LearnMore> createState() => _LearnMoreState();
}

class _LearnMoreState extends State<LearnMore> {
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
              leading: Icon(Icons.upload),
              title: Text('Upload New Products'),
              onTap: () {
                print('upload successfully');
              },
            ),
            ListTile(
              leading: Icon(Icons.view_agenda),
              title: Text('Current Products Upoaded'),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Healthy Groundnuts Tips',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          'Certainly! Here are some tips for keeping  \n groundnut products healthy and preventing \n spoilage:'),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 1.0,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        '1. Storage',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                          'Store peanuts in a cool, dry place in an airtight container to prevent \n them from becoming rancid.'),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 1.0,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        '2. Dry Properly',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                          'After harvest, allow the groundnuts to dry thoroughly in a well-ventilated area. \n Spread them out in a single layer to ensure even drying.'),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 1.0,
                        color: Colors.green,
                      ),
                      const Text(
                        '3. Remove Debris',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                          'Remove any dirt, leaves, or other debris from the groundnuts before storage.'),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 1.0,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        '4. Use Proper Containers',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                          'Store groundnuts in breathable containers such as mesh bags, baskets, or burlap sacks. Avoid airtight containers, as they can trap moisture and promote mold growth.'),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 1.0,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        '5. Avoid Moisture',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                          'Keep groundnuts away from moisture sources, such as water leaks or damp areas, \n as moisture can cause them to spoil.'),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 1.0,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        '6. Regular Inspection',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                          'Periodically check the stored groundnuts for any signs of mold, pests, or spoilage. \n Remove any affected nuts immediately.'),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 1.0,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        '7. Store Away from Light',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                          'Keep groundnuts away from direct sunlight, as light can cause them to become \n rancid and lose their flavor.'),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 1.0,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        '8. Use Proper Ventilation',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                          'Ensure proper air circulation around the stored groundnuts to prevent the buildup of moisture and mold.'),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 1.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LearnMore()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: const Text(
                    'View More Tips',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
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
