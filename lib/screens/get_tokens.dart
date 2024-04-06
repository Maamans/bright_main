import 'package:bright/screens/confirm_tokens.dart';
import 'package:flutter/material.dart';

class GetTokens extends StatefulWidget {
  const GetTokens({super.key});

  @override
  State<GetTokens> createState() => _GetTokensState();
}

class _GetTokensState extends State<GetTokens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10), 
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ' Token Market', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ), SizedBox(
                height: 10,
              ),
              const Text(
                'See Tokens', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
                          const SizedBox(height: 20),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 500, // Take 100% width of the screen
                                height: 200,
                                child: Card(
                                  color: Colors.grey[200],
                                  child: Padding(
                                  padding: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                children: [
                 SizedBox(
          width: 50, // Set the width of the icon
          height: 60, // Set the height of the icon
        child: SizedBox(
          width: 50, // Set the width of the icon
          height: 60, // Set the height of the icon
          child: ClipRRect(
            borderRadius: BorderRadius.circular(1), // Set the border radius
            child: Image.asset(
        'images/farm1.png', // Replace 'path_to_your_image.png' with the actual path to your image
        fit: BoxFit.cover,
            ),
          ),
        ),
        ),
        SizedBox(
          width: 30,
        ),
                  Row(
                    children: [
                      Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Agripin', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.green),),
                                SizedBox(width: 8),
                                Text('Agric for all services Limited', style: TextStyle(color: Colors.black54),),
                                Text('Get 20% of Farm Harvest when Invested', style: TextStyle(color: Colors.black54),),
                              ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text('\$100', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green), )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text('These tokens represent fractional ownership of agricultural crops. Investors can purchase tokens that correspond to a portion of a specific crops yield. For instance, a farmer might tokenize a portion of their corn harvest, allowing investors to buy tokens representing a share of that harvests profits')
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 300,
                              ), 
                             SizedBox(
  width: 500, // Set the width of the button
  height: 50, // Set the height of the button
  child: TextButton(
    onPressed: () {
       Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ConfirmTokens()),
      );
    },
    style: TextButton.styleFrom(
      backgroundColor: Colors.green, // Button background color
      minimumSize: Size(200, 50), // Set the minimum size of the button
    ),
    child: Text(
      'Buy Token',
      style: TextStyle(color: Colors.white), // Text color
    ),
  ),
),

                            ],
                          ),


            ],
          ),),
      ),
    );
  }
}