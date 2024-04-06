import 'package:bright/screens/markets.dart';
import 'package:bright/screens/oppor_funds.dart';
import 'package:bright/screens/pay.dart';
import 'package:bright/screens/prices.dart';
import 'package:bright/screens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ProceedPayement extends StatefulWidget {
  const ProceedPayement({Key? key}) : super(key: key);

  @override
  State<ProceedPayement> createState() => _ProceedPayementState();
}

class _ProceedPayementState extends State<ProceedPayement> {
  final GlobalKey<FormBuilderState> _formKey1 = GlobalKey<FormBuilderState>();
  final GlobalKey<FormBuilderState> _formKey2 = GlobalKey<FormBuilderState>();
    int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Checkout'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text('Delivary')],
              ),
              const SizedBox(
                height: 30,
              ),
              FormBuilder(
                // Form for email/phone input
                child: FormBuilderTextField(
                  name: 'email/phone',
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,
                        color: Color.fromARGB(255, 139, 143, 139)),
                    alignLabelWithHint: true,
                    labelText: 'Delivary Address',
                    labelStyle:
                        TextStyle(color: const Color.fromARGB(255, 87, 89, 87)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space between input forms
              FormBuilder(
                // Form for email/phone input
                child: FormBuilderTextField(
                  name: 'email/phone',
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_city,
                        color: Color.fromARGB(255, 139, 143, 139)),
                    alignLabelWithHint: true,
                    labelText: 'Delivar to your current location',
                    labelStyle:
                        TextStyle(color: const Color.fromARGB(255, 87, 89, 87)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payemnet methods',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ), // Add space between input forms
              const SizedBox(height: 10),

              FormBuilder(
                // Form for email/phone input
                child: FormBuilderTextField(
                  name: 'email/phone',
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'images/mocah.png',
                      width: 110,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    labelText: 'Mocah',
                    labelStyle:
                        TextStyle(color: const Color.fromARGB(255, 87, 89, 87)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space between input forms
              FormBuilder(
                // Form for email/phone input
                child: FormBuilderTextField(
                  name: 'email/phone',
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'images/master.png',
                      width: 140,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    labelText: 'xxxx xxxxx xxxx',
                    labelStyle:
                        TextStyle(color: const Color.fromARGB(255, 87, 89, 87)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space between input forms
              FormBuilder(
                // Form for email/phone input
                child: FormBuilderTextField(
                  name: 'email/phone',
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'images/orangemoney.png',
                      width: 110,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    labelText: 'OrangeMoney',
                    labelStyle:
                        TextStyle(color: const Color.fromARGB(255, 87, 89, 87)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space between input forms
              FormBuilder(
                // Form for email/phone input
                child: FormBuilderTextField(
                  name: 'email/phone',
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'images/afrimoney.png',
                      width: 220,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    labelText: 'Afrimoney',
                    labelStyle:
                        TextStyle(color: const Color.fromARGB(255, 87, 89, 87)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Other Payements',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 12),

              FormBuilder(
                // Form for email/phone input
                child: FormBuilderTextField(
                  name: 'email/phone',
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.money_sharp,
                        color: Color.fromARGB(255, 139, 143, 139)),
                    alignLabelWithHint: true,
                    labelText: 'Delivary On Payements',
                    labelStyle:
                        TextStyle(color: const Color.fromARGB(255, 87, 89, 87)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ), 
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PayementSuccessful()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: const Text(
                    ' Pay',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),//
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
