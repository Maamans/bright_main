import 'package:bright/screens/markets.dart';
import 'package:bright/screens/oppor_funds.dart';
import 'package:bright/screens/prices.dart';
import 'package:bright/screens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AllProductsHealth extends StatefulWidget {
  const AllProductsHealth({super.key});

  @override
  State<AllProductsHealth> createState() => _AllProductsHealthState();
}

class _AllProductsHealthState extends State<AllProductsHealth> {
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
                print('Current Products Upoaded');
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: const EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Products LifeCycle',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Check out the bar chart showcasing the health benefits of your products! \n From vitamins to antioxidants, we have got your health \n covered.  Make the healthy choice today!',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 200.0, // Adjust height as needed
                      child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <CartesianSeries>[
                          BarSeries<SalesData, String>(
                            dataSource: <SalesData>[
                              SalesData('Mango', 45),
                              SalesData('Pepper', 28),
                              SalesData('Rice', 34),
                              SalesData('Onions', 32),
                              SalesData('Cows', 40),
                              SalesData('Lettuce', 42),
                              SalesData('Groundnuts', 45),
                              SalesData('CoaCoa', 48),
                            ],
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales,
                            dataLabelSettings: DataLabelSettings(
                                isVisible: true,
                                labelPosition: ChartDataLabelPosition.outside),
                            color:
                                Colors.green, // Set the default color to green
                            // Customize the bar colors based on the values
                            pointColorMapper: (SalesData sales, _) {
                              if (sales.sales <= 40) {
                                return Colors
                                    .yellow; // Set color to yellow for values greater than or equal to 40
                              } else {
                                return Colors
                                    .green; // Set color to green for values less than 40
                              }
                            },
                            // Customize the tooltip format to display values as percentages
                            dataLabelMapper: (SalesData sales, _) =>
                                '${(sales.sales / 100).toStringAsFixed(2)}%',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle first button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.green, // Set green background color
                      ),
                      child: Text(
                        'Products in Good Health',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle second button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.yellow, // Set yellow background color
                      ),
                      child: Text(
                        'Products about to Fade Out',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
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

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
