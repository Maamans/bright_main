import 'package:bright/screens/oppor_funds.dart';
import 'package:bright/screens/prices.dart';
import 'package:bright/screens/tokens.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({Key? key});

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
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
                color: Colors
                    .green, // Change the background color of the header to green
              ),
            ),
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
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Locate Closes ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                ' Markets Around You',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const SizedBox(height: 20),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/HILmr.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 100,
                          color: Colors.green,
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'images/markets.jpeg',
                          width: 510,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 420,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title:
                              SingleChildScrollView(child: const Text('Western Area Urban Closes Markets')),
                          content:
                              Column(
                                children: [
                                  Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15.0),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                            image: AssetImage('images/HILmr.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          const Icon(
                                                            Icons.location_on,
                                                            size: 100,
                                                            color: Colors.green,
                                                          ),
                                                          const SizedBox(height: 10),
                                                          Image.asset(
                                                            'images/markets.jpeg',
                                                            width: 510,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 20,),

                                               Row(
  children: [
   SizedBox(
      width: 170,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: AlertDialog(
  title: const Text('All Close Market '),
  content: Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Shell Market'),
              Text('Address: Shell Roundabout, Freetown, Sierra Leone.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Abacha Street Market'),
              Text('Address: Abacha Street, Freetown, Sierra Leone'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Marshall Street Market'),
              Text('Address: Marshall Street, Freetown, Sierra Leone')
            ]
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kissy Market'),
              Text('Abacha Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Krootown Road Market'),
              Text('Address: Krootown Road, Freetown, Sierra Leone'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Marlinea Market'),
              Text('Marlinea, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Portee Market'),
              Text('Address: Portee, Freetown, Sierra Leone'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('King Jimmy Market'),
              Text('King Jimmy, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Calaba Town Market'),
              Text('Address: Calaba Town, Freetown, Sierra Leone'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Wellington Market'),
              Text('Address: Wellington, Freetown, Sierra Leone'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Fourah Bay Market'),
              Text('Address: Fourah Bay, Freetown, Sierra Leone'),
            ],
          ),
        ],
      ),
      
    ],
  ),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Close'),
    ),
  ],
),

              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at the East Of Freetown', style: TextStyle(color: Colors.white),),
      ),
    ),
    SizedBox(
      width: 20,
    ),
    SizedBox(
      width: 170,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: AlertDialog(
  title: const Text('All Close Market '),
  content: Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lumley Market'),
              Text('Lumley, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Congo Market'),
              Text('Congo Town, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kroo Bay Market'),
              Text('Kroo Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Abacha Street Market'),
              Text('Abacha Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Malama Thomas Street Market'),
              Text('Malama Thomas Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Marlinea Market'),
              Text('Marlinea, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PZ Market'),
              Text('PZ, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('King Jimmy Market'),
              Text('King Jimmy, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Murray Town Market'),
              Text('Murray Town, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Susans Bay Market'),
              Text('Susans Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Juba Market'),
              Text('Juba, Freetown.'),
            ],
          ),
        ],
      ),
      
    ],
  ),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Close'),
    ),
  ],
),

              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at the West Of Freetown', style: TextStyle(color: Colors.white),),
      ),
    ),
  ],
)

                                ],
                              ),
              
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Set the background color to green
                        ),
                  child: const Text('Western Area Urban Closes Markets', style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 420,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title:
                              SingleChildScrollView(child: const Text('Western Area Urban Closes Markets')),
                          content:
                              Column(
                                children: [
                                  Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15.0),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                            image: AssetImage('images/HILmr.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          const Icon(
                                                            Icons.location_on,
                                                            size: 100,
                                                            color: Colors.green,
                                                          ),
                                                          const SizedBox(height: 10),
                                                          Image.asset(
                                                            'images/markets.jpeg',
                                                            width: 510,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 20,),

                                               Row(
  children: [
    
    
    SizedBox(
      width: 350,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: AlertDialog(
  title: const Text('All Close Market '),
  content: Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tokeh Market'),
              Text('Address: Tokeh, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Goderich Market'),
              Text('Address: Goderich, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Regent Market'),
              Text('Address: Regent, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Grafton Market'),
              Text('Address: Grafton, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Waterloo Market'),
              Text('Address: Waterloo, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('York Village Market'),
              Text('Address: York Village, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rokel Market'),
              Text('Address: Rokel, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kent Village Market'),
              Text('Address: Kent Village, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kossoh Town Market'),
              Text('Address: Kossoh Town, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hamilton Market'),
              Text('Address: Hamilton, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Koya Town Market'),
              Text('Address: Koya Town, Western Rural, Sierra Leone'),
            ],
          ),
        ],
      ),
      
    ],
  ),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Close'),
    ),
  ],
),

              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Close Markets at Western Rural Areas', style: TextStyle(color: Colors.white),),
      ),
    ),
  ],
)

                                ],
                              ),
              
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Set the background color to green
                        ),
                  child: const Text('Western Area Rural Closes Markets', style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 420,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title:
                              SingleChildScrollView(child: const Text('Western Area Urban Closes Markets')),
                          content:
                              Column(
                                children: [
                                  Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15.0),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                            image: AssetImage('images/HILmr.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          const Icon(
                                                            Icons.location_on,
                                                            size: 100,
                                                            color: Colors.green,
                                                          ),
                                                          const SizedBox(height: 10),
                                                          Image.asset(
                                                            'images/markets.jpeg',
                                                            width: 510,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 20,),

                                               Row(
  children: [
    SizedBox(
      width: 170,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Alert 1'),
                content: const Text('This is the content of alert 1.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at Pujehun', style: TextStyle(color: Colors.white),),
      ),
    ),
    SizedBox(
      width: 20,
    ),
    SizedBox(
      width: 170,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: AlertDialog(
  title: const Text('All Close Market '),
  content: Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lumley Market'),
              Text('Lumley, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Congo Market'),
              Text('Congo Town, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kroo Bay Market'),
              Text('Kroo Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Abacha Street Market'),
              Text('Abacha Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Malama Thomas Street Market'),
              Text('Malama Thomas Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Marlinea Market'),
              Text('Marlinea, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PZ Market'),
              Text('PZ, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('King Jimmy Market'),
              Text('King Jimmy, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Murray Town Market'),
              Text('Murray Town, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Susans Bay Market'),
              Text('Susans Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Juba Market'),
              Text('Juba, Freetown.'),
            ],
          ),
        ],
      ),
      
    ],
  ),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Close'),
    ),
  ],
),

              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at the West Of Freetown', style: TextStyle(color: Colors.white),),
      ),
    ),
  ],
),
SizedBox(
  height: 10,
), 

  Row(
  children: [
    SizedBox(
      width: 170,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Alert 1'),
                content: const Text('This is the content of alert 1.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at Moyamba', style: TextStyle(color: Colors.white),),
      ),
    ),
    SizedBox(
      width: 20,
    ),
    SizedBox(
      width: 170,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: AlertDialog(
  title: const Text('All Close Market '),
  content: Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lumley Market'),
              Text('Lumley, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Congo Market'),
              Text('Congo Town, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kroo Bay Market'),
              Text('Kroo Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Abacha Street Market'),
              Text('Abacha Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Malama Thomas Street Market'),
              Text('Malama Thomas Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Marlinea Market'),
              Text('Marlinea, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PZ Market'),
              Text('PZ, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('King Jimmy Market'),
              Text('King Jimmy, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Murray Town Market'),
              Text('Murray Town, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Susans Bay Market'),
              Text('Susans Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Juba Market'),
              Text('Juba, Freetown.'),
            ],
          ),
        ],
      ),
      
    ],
  ),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Close'),
    ),
  ],
),

              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at Pujehun', style: TextStyle(color: Colors.white),),
      ),
    ),
  ],
),

                                ],
                              ),
              
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Set the background color to green
                        ),
                  child: const Text('Southern Provinces Closes Markets', style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 420,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title:
                              SingleChildScrollView(child: const Text('Western Area Urban Closes Markets')),
                          content:
                              Column(
                                children: [
                                  Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15.0),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                            image: AssetImage('images/HILmr.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          const Icon(
                                                            Icons.location_on,
                                                            size: 100,
                                                            color: Colors.green,
                                                          ),
                                                          const SizedBox(height: 10),
                                                          Image.asset(
                                                            'images/markets.jpeg',
                                                            width: 510,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 20,),

                                               Row(
  children: [
    SizedBox(
      width: 170,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Alert 1'),
                content: const Text('This is the content of alert 1.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at the East Of Freetown', style: TextStyle(color: Colors.white),),
      ),
    ),
    SizedBox(
      width: 20,
    ),
    SizedBox(
      width: 170,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: AlertDialog(
  title: const Text('All Close Market '),
  content: Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lumley Market'),
              Text('Lumley, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Congo Market'),
              Text('Congo Town, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kroo Bay Market'),
              Text('Kroo Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Abacha Street Market'),
              Text('Abacha Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Malama Thomas Street Market'),
              Text('Malama Thomas Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Marlinea Market'),
              Text('Marlinea, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PZ Market'),
              Text('PZ, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('King Jimmy Market'),
              Text('King Jimmy, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Murray Town Market'),
              Text('Murray Town, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Susans Bay Market'),
              Text('Susans Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Juba Market'),
              Text('Juba, Freetown.'),
            ],
          ),
        ],
      ),
      
    ],
  ),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Close'),
    ),
  ],
),

              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at the West Of Freetown', style: TextStyle(color: Colors.white),),
      ),
    ),
  ],
)

                                ],
                              ),
              
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Set the background color to green
                        ),
                  child: const Text('Nothern Provinces Closes Markets', style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 420,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title:
                              SingleChildScrollView(child: const Text('Western Area Urban Closes Markets')),
                          content:
                              Column(
                                children: [
                                  Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15.0),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                            image: AssetImage('images/HILmr.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          const Icon(
                                                            Icons.location_on,
                                                            size: 100,
                                                            color: Colors.green,
                                                          ),
                                                          const SizedBox(height: 10),
                                                          Image.asset(
                                                            'images/markets.jpeg',
                                                            width: 510,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 20,),

                                               Row(
  children: [
    SizedBox(
      width: 170,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Alert 1'),
                content: const Text('This is the content of alert 1.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at the East Of Freetown', style: TextStyle(color: Colors.white),),
      ),
    ),
    SizedBox(
      width: 20,
    ),
    SizedBox(
      width: 170,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: AlertDialog(
  title: const Text('All Close Market '),
  content: Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lumley Market'),
              Text('Lumley, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Congo Market'),
              Text('Congo Town, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kroo Bay Market'),
              Text('Kroo Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Abacha Street Market'),
              Text('Abacha Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Malama Thomas Street Market'),
              Text('Malama Thomas Street, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Marlinea Market'),
              Text('Marlinea, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PZ Market'),
              Text('PZ, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('King Jimmy Market'),
              Text('King Jimmy, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Murray Town Market'),
              Text('Murray Town, Freetown.'),
            ],
          ),
        ],
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Susans Bay Market'),
              Text('Susans Bay, Freetown.'),
            ],
          ),
        ],
      ),
       Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('path_to_your_image'),
            radius: 30, // Adjust the size of the circle image as needed
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Juba Market'),
              Text('Juba, Freetown.'),
            ],
          ),
        ],
      ),
      
    ],
  ),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Close'),
    ),
  ],
),

              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // background color
        ),
        child: const Text('Markets at the West Of Freetown', style: TextStyle(color: Colors.white),),
      ),
    ),
  ],
)

                                ],
                              ),
              
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Set the background color to green
                        ),
                  child: const Text('Eastern Provinces Closes Markets', style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(
                height: 20,
              )
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
