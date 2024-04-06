import 'package:bright/screens/confirm.dart';
import 'package:bright/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailPhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final List<String> dropdownItems = [
    'Farmer',
    'Customer',
    'Company/Government Agencies/NGO'
  ];
  String selectedOption = 'Farmer';

  @override
  void dispose() {
    usernameController.dispose();
    emailPhoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white, // Set white background
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Add padding to the screen
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              // Image at the top, centered
              Center(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 60,
                      left: 20,
                      right: 20), // Optional padding for the image
                  child: Image.asset(
                    'images/brig.jpeg',
                    width: 140,
                  ),
                ),
              ),
              const SizedBox(height: 100), // Add space between image and text
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                  height: 10), // Add space between text and input forms
              const Text(
                'Sign up to create an account with Bright',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(
                  height: 20), // Add space between text and input forms
              FormBuilder(
                // Form for email/phone input
                child: FormBuilderTextField(
                  name: 'username',
                  decoration: InputDecoration(
                    labelText: 'Enter username/Company',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space between input forms
              FormBuilder(
                // Form for password input
                child: FormBuilderTextField(
                  name: 'email/phone',
                  decoration: InputDecoration(
                    labelText: 'email/phone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space between input forms
              FormBuilder(
                // Form for password input
                child: FormBuilderTextField(
                  name: 'password',
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space between input forms
              FormBuilder(
                // Form for password input
                child: FormBuilderTextField(
                  name: 'confirmpassword',
                  decoration: InputDecoration(
                    labelText: 'confirmPassword',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space between input forms
              FormBuilder(
                // Form for password input
                child: FormBuilderDropdown(
                  name: 'password',
                  initialValue: 'Farmer',
                  decoration: InputDecoration(
                    labelText: 'Select to register as',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  items: dropdownItems
                      .map((item) => DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value as String;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 100,
              ),

              SizedBox(
                width: 430,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfirmPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: const Text(
                    'SignUp',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
