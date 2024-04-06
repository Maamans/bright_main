import 'dart:math';

import 'package:bright/screens/learn_more.dart';
import 'package:bright/screens/markets.dart';
import 'package:bright/screens/oppor_funds.dart';
import 'package:bright/screens/prices.dart';
import 'package:bright/screens/tokens.dart';
import 'package:flutter/material.dart';

class ViewAnalysis extends StatefulWidget {
  const ViewAnalysis({Key? key}) : super(key: key);

  @override
  State<ViewAnalysis> createState() => _ViewAnalysisState();
}

class _ViewAnalysisState extends State<ViewAnalysis> {
  int _selectedIndex = 0;

  late String currentTime;
  //  int _selectedIndex = 0;

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
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        // Left-hand side column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Analysis',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 14),
                              Text('Current PRICE',
                                  style: TextStyle(color: Colors.green)),
                              SizedBox(height: 14),
                              Text('Best kept in System ',
                                  style: TextStyle(color: Colors.purple)),
                              SizedBox(height: 14),
                              Text('Quality Percentage',
                                  style: TextStyle(color: Colors.red)),
                              SizedBox(height: 14),
                              Text('Equipamentos emprestados',
                                  style: TextStyle(color: Colors.greenAccent)),
                            ],
                          ),
                        ),
                        // Right-hand side column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 14),
                              Text('Le 250 per dozen',
                                  style: TextStyle(color: Colors.green)),
                              SizedBox(height: 14),
                              Text('72 hours',
                                  style: TextStyle(color: Colors.purple)),
                              SizedBox(height: 14),
                              Text('40%', style: TextStyle(color: Colors.red)),
                              SizedBox(height: 14),
                              Text('05',
                                  style: TextStyle(color: Colors.greenAccent)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16), // Add some space between the cards
              SizedBox(
                height: 200,
                child: Card(
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        // Left-hand side column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Analysis',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 14),
                              Text('Current PRICE',
                                  style: TextStyle(color: Colors.green)),
                              SizedBox(height: 14),
                              Text('Best kept in System ',
                                  style: TextStyle(color: Colors.purple)),
                              SizedBox(height: 14),
                              Text('Quality Percentage',
                                  style: TextStyle(color: Colors.red)),
                              SizedBox(height: 14),
                              Text('Equipamentos emprestados',
                                  style: TextStyle(color: Colors.greenAccent)),
                            ],
                          ),
                        ),
                        // Right-hand side column
                        Expanded(
                          child: _colorCircle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: 500,
                child: Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Trace the productslife cycle of your \n products',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                        width: 470, // Set the width of the button
                        height: 50, // Set the height of the button
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 4, 43, 90),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              
Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  LearnMore()),
                      );                            },
                            child: const Text(
                              'Learn More Today',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 242, 237, 237),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
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

Widget _colorCircle() {
  return Container(
    width: 60,
    height: 100,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.white,
        width: 4,
      ),
    ),
    child: Stack(
      children: [
        Positioned.fill(
          child: CustomPaint(
            painter: _CirclePainter(),
          ),
        ),
      ],
    ),
  );
}

class _CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final startAngle = -pi / 2; // -90 degrees
    final sweepAngle = pi * 2 / 4; // 90 degrees

    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);

    paint.color = Colors.green;
    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);

    paint.color = Colors.purple;
    canvas.drawArc(rect, startAngle + sweepAngle, sweepAngle, true, paint);

    paint.color = Colors.red;
    canvas.drawArc(rect, startAngle + sweepAngle * 2, sweepAngle, true, paint);

    paint.color = Colors.greenAccent;
    canvas.drawArc(rect, startAngle + sweepAngle * 3, sweepAngle, true, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
