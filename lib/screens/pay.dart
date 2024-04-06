import 'package:bright/screens/main_page.dart';
import 'package:bright/screens/markets.dart';
import 'package:bright/screens/oppor_funds.dart';
import 'package:bright/screens/prices.dart';
import 'package:bright/screens/tokens.dart';
import 'package:flutter/material.dart';

class PayementSuccessful extends StatefulWidget {
  const PayementSuccessful({super.key});

  @override
  State<PayementSuccessful> createState() => _PayementSuccessfulState();
}

class _PayementSuccessfulState extends State<PayementSuccessful> {
        final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        const  UserAccountsDrawerHeader(accountName: Text('George Mackali'), 
          accountEmail: Text('Georgemackali@gmail.com'),
          currentAccountPicture: CircleAvatar(),
          decoration: BoxDecoration(
          color: Colors.green, // Change the background color of the header to green
        ),),
          ListTile(
            leading: Icon(Icons.upload),
            title: Text('Upload your file'),
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
    )
    ,

      body: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('images/brig.jpeg', width: 200, height: 130,),
      ),
      const Text(
        'Your payment was successful!',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    const  SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 30,
            height: 2,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
        const  SizedBox(width: 10),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        const  SizedBox(width: 10),
          Container(
            width: 30,
            height: 2,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
     const SizedBox(height: 16),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color: Colors.green, width: 2),
            ),
          ),
         const Icon(Icons.check, color: Colors.green, size: 30),
        ],
      ),
    const  SizedBox(height: 16),
     const Padding(
        padding:  EdgeInsets.all(8.0),
        child: Card(
          elevation: 2,
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text(
              'Thank you for choosing our agricultural products!  \n Your  support not only helps promote local farmers dreams but also \n contributes to the building of our nation. Together, we are cultivating a sustainable \n future for agriculture and communities. We appreciate your support and look forward to \n serving you again!',
              style: TextStyle(fontSize: 18,),
            ),
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const  Text('Delivery will be done within the estimated time. Please note that delivery \n times may vary based on location and other factors.'), 
        SizedBox(
          height: 15,
        ),
           SizedBox(
                width: 450,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: const Text(
                    ' Buy More Products',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),//
              SizedBox(
                height: 15,
              )
        ],
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