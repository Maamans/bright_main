import 'package:bright/screens/get_tokens.dart';
import 'package:flutter/material.dart';

class BuyTokens extends StatefulWidget {
  const BuyTokens({super.key});

  @override
  State<BuyTokens> createState() => _BuyTokensState();
}

class _BuyTokensState extends State<BuyTokens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ' Token Market',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                'See Tokens',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  SizedBox(
                    width: 500, // Set the width of the button
                    height: 80, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetTokens()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50, // Set the width of the icon
                            height: 60, // Set the height of the icon
                            child: SizedBox(
                              width: 50, // Set the width of the icon
                              height: 60, // Set the height of the icon
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    1), // Set the border radius
                                child: Image.asset(
                                  'images/farm1.png', // Replace 'path_to_your_image.png' with the actual path to your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buy Token',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Agric for all services Limited',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    'Get 20% of Farm Harvest when Invested',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            '\$100',
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 500, // Set the width of the button
                    height: 80, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetTokens()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50, // Set the width of the icon
                            height: 60, // Set the height of the icon
                            child: SizedBox(
                              width: 50, // Set the width of the icon
                              height: 60, // Set the height of the icon
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    1), // Set the border radius
                                child: Image.asset(
                                  'images/farm3.jpeg', // Replace 'path_to_your_image.png' with the actual path to your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buy Token',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Agric for all services Limited',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    'Get 20% of Farm Harvest when Invested',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            '\$70',
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 500, // Set the width of the button
                    height: 80, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetTokens()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50, // Set the width of the icon
                            height: 60, // Set the height of the icon
                            child: SizedBox(
                              width: 50, // Set the width of the icon
                              height: 60, // Set the height of the icon
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    1), // Set the border radius
                                child: Image.asset(
                                  'images/farm6.png', // Replace 'path_to_your_image.png' with the actual path to your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buy Token',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Agric for all services Limited',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    'Get 20% of Farm Harvest when Invested',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            '\$80',
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 500, // Set the width of the button
                    height: 80, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetTokens()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50, // Set the width of the icon
                            height: 60, // Set the height of the icon
                            child: SizedBox(
                              width: 50, // Set the width of the icon
                              height: 60, // Set the height of the icon
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    1), // Set the border radius
                                child: Image.asset(
                                  'images/farm9.jpeg', // Replace 'path_to_your_image.png' with the actual path to your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buy Token',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Agric for all services Limited',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    'Get 20% of Farm Harvest when Invested',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            '\$90',
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 500, // Set the width of the button
                    height: 80, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetTokens()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50, // Set the width of the icon
                            height: 60, // Set the height of the icon
                            child: SizedBox(
                              width: 50, // Set the width of the icon
                              height: 60, // Set the height of the icon
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    1), // Set the border radius
                                child: Image.asset(
                                  'images/farm1.png', // Replace 'path_to_your_image.png' with the actual path to your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buy Token',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Agric for all services Limited',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    'Get 20% of Farm Harvest when Invested',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            '\$150',
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 500, // Set the width of the button
                    height: 80, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetTokens()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50, // Set the width of the icon
                            height: 60, // Set the height of the icon
                            child: SizedBox(
                              width: 50, // Set the width of the icon
                              height: 60, // Set the height of the icon
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    1), // Set the border radius
                                child: Image.asset(
                                  'images/farm3.jpeg', // Replace 'path_to_your_image.png' with the actual path to your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buy Token',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Agric for all services Limited',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    'Get 20% of Farm Harvest when Invested',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            '\$110',
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 500, // Set the width of the button
                    height: 80, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetTokens()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50, // Set the width of the icon
                            height: 60, // Set the height of the icon
                            child: SizedBox(
                              width: 50, // Set the width of the icon
                              height: 60, // Set the height of the icon
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    1), // Set the border radius
                                child: Image.asset(
                                  'images/farm6.png', // Replace 'path_to_your_image.png' with the actual path to your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buy Token',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Agric for all services Limited',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    'Get 20% of Farm Harvest when Invested',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            '\$130',
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 500, // Set the width of the button
                    height: 80, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetTokens()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50, // Set the width of the icon
                            height: 60, // Set the height of the icon
                            child: SizedBox(
                              width: 50, // Set the width of the icon
                              height: 60, // Set the height of the icon
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    1), // Set the border radius
                                child: Image.asset(
                                  'images/farm9.jpeg', // Replace 'path_to_your_image.png' with the actual path to your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buy Token',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Agric for all services Limited',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    'Get 20% of Farm Harvest when Invested',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            '\$90',
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 500, // Set the width of the button
                    height: 80, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetTokens()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50, // Set the width of the icon
                            height: 60, // Set the height of the icon
                            child: SizedBox(
                              width: 50, // Set the width of the icon
                              height: 60, // Set the height of the icon
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    1), // Set the border radius
                                child: Image.asset(
                                  'images/farm6.png', // Replace 'path_to_your_image.png' with the actual path to your image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buy Token',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Agric for all services Limited',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Text(
                                    'Get 20% of Farm Harvest when Invested',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            '\$140',
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
