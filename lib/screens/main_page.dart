import 'package:bright/model/food_item.dart';
import 'package:bright/screens/all_products.dart';
import 'package:bright/screens/buy_products.dart';
import 'package:bright/screens/markets.dart';
import 'package:bright/screens/oppor_funds.dart';
import 'package:bright/screens/prices.dart';
import 'package:bright/screens/products_health.dart';
import 'package:bright/screens/products_location.dart';
import 'package:bright/screens/tokens.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final FoodItem item = items[index];
                return _buildCardContainer1(context, item);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 230,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllProductsHealth()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: const Text(
                    'View All Products Healths',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15), // Add space between buttons
              SizedBox(
                width: 230,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductsLocation()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: const Text(
                    'Trace Products Location',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          )
        ],
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

Widget _buildRowWithActionButton() {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Icon(Icons.data_usage, color: Colors.green), // Icon for data flow
            const SizedBox(width: 8.0),
            Text(
              'View all Products Health',
              style: TextStyle(color: Colors.black),
            ), // Text for All products health
          ],
        ),
        Column(
          children: [
            const Text('Add Products'),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                // Handle floating action button tap
              },
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildCardContainer1(BuildContext context, FoodItem item) {
  return Card(
    color: Colors.white.withOpacity(0.95),
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            item.name,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 150, // Set the height for the image
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
          const Divider(
            color: Colors.green,
            thickness: 2.0,
            height: 20, // Set the height for the divider
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductsHealth(
                              item: item,
                            )),
                  );
                },
                child: const Text(
                  'View Products Health',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BuyProducts(
                              item: item,
                            )),
                  );
                },
                child: const Text(
                  'Buy Products',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

// Repeat the _buildCardContainerX() methods for Card 2 to Card 6 with the same modification

// Widget _buildCardContainer2(BuildContext context) {
//   return Card(
//     color: Colors.white.withOpacity(0.95),
//     margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//     child: IntrinsicHeight(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           const Text(
//             'GroundNuts',
//             style: TextStyle(fontWeight: FontWeight.bold),
//             textAlign: TextAlign.start,
//           ),
//           SizedBox(
//             height: 150, // Set the height for the image
//             child: Image.asset(
//               'images/groundnuts.jpg',
//               fit: BoxFit.cover,
//             ),
//           ),
//           const Divider(
//             color: Colors.green,
//             thickness: 2.0,
//             height: 20, // Set the height for the divider
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const ProductsHealth(imagePath: '',)),
//                   );
                  
//                 },
//                 child: const Text(
//                   'View Products Health',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 decoration: const BoxDecoration(
//                   color: Colors.green,
//                   shape: BoxShape.circle,
//                 ),
//                 child: const Icon(
//                   Icons.linear_scale,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget _buildCardContainer3(BuildContext context) {
//   return Card(
//     color: Colors.white.withOpacity(0.95),
//     margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//     child: IntrinsicHeight(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           const Text(
//             'life stock cows',
//             style: TextStyle(fontWeight: FontWeight.bold),
//             textAlign: TextAlign.start,
//           ),
//           SizedBox(
//             height: 150, // Set the height for the image
//             child: Image.asset(
//               'images/cows.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           const Divider(
//             color: Colors.green,
//             thickness: 2.0,
//             height: 20, // Set the height for the divider
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const ProductsHealth(imagePath: '',)),
//                   );
                  
//                 },
//                 child: const Text(
//                   'View Products Health',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 decoration: const BoxDecoration(
//                   color: Colors.green,
//                   shape: BoxShape.circle,
//                 ),
//                 child: const Icon(
//                   Icons.linear_scale,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget _buildCardContainer4(BuildContext context) {
//   return Card(
//     color: Colors.white.withOpacity(0.95),
//     margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//     child: IntrinsicHeight(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           const Text(
//             'Onoins',
//             style: TextStyle(fontWeight: FontWeight.bold),
//             textAlign: TextAlign.start,
//           ),
//           SizedBox(
//             height: 150, // Set the height for the image
//             child: Image.asset(
//               'images/onions.jpg',
//               fit: BoxFit.cover,
//             ),
//           ),
//           const Divider(
//             color: Colors.green,
//             thickness: 2.0,
//             height: 20, // Set the height for the divider
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const ProductsHealth(imagePath: '',)),
//                   );
                 
//                 },
//                 child: const Text(
//                   'View Products Health',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 decoration: const BoxDecoration(
//                   color: Colors.green,
//                   shape: BoxShape.circle,
//                 ),
//                 child: const Icon(
//                   Icons.linear_scale,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget _buildCardContainer5(BuildContext context) {
//   return Card(
//     color: Colors.white.withOpacity(0.95),
//     margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//     child: IntrinsicHeight(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           const Text(
//             'Rice',
//             style: TextStyle(fontWeight: FontWeight.bold),
//             textAlign: TextAlign.start,
//           ),
//           SizedBox(
//             height: 150, // Set the height for the image
//             child: Image.asset(
//               'images/rice.jpg',
//               fit: BoxFit.cover,
//             ),
//           ),
//           const Divider(
//             color: Colors.green,
//             thickness: 2.0,
//             height: 20, // Set the height for the divider
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton(
//                 onPressed: () {
//                    Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const ProductsHealth(imagePath: '',)),
//                   );
                 
//                 },
//                 child: const Text(
//                   'View Products Health',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 decoration: const BoxDecoration(
//                   color: Colors.green,
//                   shape: BoxShape.circle,
//                 ),
//                 child: const Icon(
//                   Icons.linear_scale,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget _buildCardContainer6(BuildContext context) {
//   return Card(
//     color: Colors.white.withOpacity(0.95),
//     margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//     child: IntrinsicHeight(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           const Text(
//             'Lettuce',
//             style: TextStyle(fontWeight: FontWeight.bold),
//             textAlign: TextAlign.start,
//           ),
//           SizedBox(
//             height: 150, // Set the height for the image
//             child: Image.asset(
//               'images/lettuce.jpg',
//               fit: BoxFit.cover,
//             ),
//           ),
//           const Divider(
//             color: Colors.green,
//             thickness: 2.0,
//             height: 20, // Set the height for the divider
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ProductsHealth(imagePath: '',)),
//                   );
//                 },
//                 child: const Text(
//                   'View Products Health',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 decoration: const BoxDecoration(
//                   color: Colors.green,
//                   shape: BoxShape.circle,
//                 ),
//                 child: const Icon(
//                   Icons.linear_scale,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }
