import 'package:bright/screens/all_products.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProductsLocation extends StatefulWidget {
  const ProductsLocation({Key? key}) : super(key: key);

  @override
  State<ProductsLocation> createState() => _ProductsLocationState();
}

class _ProductsLocationState extends State<ProductsLocation> {
        final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String statusText = ''; // Variable to store the status text

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

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Analysis',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              statusText = 'stuck';
                            });
                          },
                          child: const Text(
                            'stuck',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              statusText = 'Close to destination';
                            });
                          },
                          child: const Text(
                            'Close to destination',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              statusText = 'Arrive in an hour time';
                            });
                          },
                          child: const Text(
                            'Arrive in an hour time',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              statusText = 'Arrive safely';
                            });
                          },
                          child: const Text(
                            'Arrive safely',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          const  Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                           'Current Products Location Analysis',  style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 16.0),
                    SizedBox(
                      height: 200.0, // Adjust height as needed
                      
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }

  }