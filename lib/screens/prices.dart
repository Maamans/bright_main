import 'package:bright/screens/markets.dart';
import 'package:bright/screens/oppor_funds.dart';
import 'package:flutter/material.dart';

class BestPrices extends StatefulWidget {
  const BestPrices({super.key});

  @override
  State<BestPrices> createState() => _BestPricesState();
}

class _BestPricesState extends State<BestPrices> {
  String _searchTerm = '';
    int _selectedIndex = 0;


  List<Map<String, String>> items = [
    {'name': 'Cow', 'description': 'male cow', 'image': 'images/seed.jpg', 'price': 'Nle1000'},
    {'name': 'Rice', 'description': 'rice description', 'image': 'images/rice.jpg', 'price': 'Nle2000'},
    {'name': 'Pepper', 'description': 'pepper description', 'image': 'images/pepper.jpg', 'price': 'Nle3000'},
    {'name': 'Onions', 'description': 'onions description', 'image': 'images/onions.jpg', 'price': 'Nle4000'},
    {'name': 'Lettuce', 'description': 'lettuce description', 'image': 'images/lettuce.jpg', 'price': 'Nle5000'},
    {'name': 'Groundnuts', 'description': 'groundnuts description', 'image': 'images/groundnuts.jpg', 'price': 'Nle6000'},
    {'name': 'Sugarcane', 'description': 'Sugarcane cow', 'image': 'images/sugarcane.webp', 'price': 'Nle1000'},
    {'name': 'Potatoes', 'description': 'Potatoes description', 'image': 'images/potatoes.jpeg', 'price': 'Nle2000'},
    {'name': 'Pineaple', 'description': 'Pineaple description', 'image': 'images/pineaple.webp', 'price': 'Nle3000'},
    {'name': 'Yams', 'description': 'Yams description', 'image': 'images/yams.jpeg', 'price': 'Nle4000'},
    {'name': 'Cotton', 'description': 'Cotton description', 'image': 'images/cotton.jpeg', 'price': 'Nle5000'},
    {'name': 'Apples', 'description': 'Apples description', 'image': 'images/apples.jpeg', 'price': 'Nle6000'},
  
  ];

  @override
  Widget build(BuildContext context) {
            final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    List<Map<String, String>> filteredItems = items.where((item) =>
        item['name']!.toLowerCase().contains(_searchTerm.toLowerCase())).toList();

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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20), // Add some space between AppBar and TextField
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Best Markets Prices', style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: 12,),
                  Container(
                    width: 420,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _searchTerm = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Search for products price',
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // Handle search icon pressed
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Items', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  SizedBox(width: 350,),
                  Text('Price Details', style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 20),
              for (var item in filteredItems)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item['image']!),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['name']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            Text(item['description']!, style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best Market Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('  ${item['price']}')
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
              for (var item in filteredItems)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item['image']!),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['name']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            Text(item['description']!, style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best Market Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('  ${item['price']}')
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
              for (var item in filteredItems)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item['image']!),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['name']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            Text(item['description']!, style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best Market Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('  ${item['price']}')
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
              for (var item in filteredItems)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item['image']!),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['name']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            Text(item['description']!, style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best Market Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('  ${item['price']}')
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
              for (var item in filteredItems)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item['image']!),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['name']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            Text(item['description']!, style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best Market Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('  ${item['price']}')
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
              for (var item in filteredItems)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item['image']!),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['name']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            Text(item['description']!, style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best Market Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('  ${item['price']}')
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
              for (var item in filteredItems)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item['image']!),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['name']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            Text(item['description']!, style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best Market Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('  ${item['price']}')
                      ],
                    )
                  ],
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
              builder: (context) => const OpportunitiesFunds(),
            ),
          );
        } else if (index == 0) {
            // Navigate to SignUp screen
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const BestPrices()),
            );
          }
          else if (index == 1) {
            // Navigate to SignUp screen
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MarketPlace()),
            );
          }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money),
          label: 'Best Price',
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
