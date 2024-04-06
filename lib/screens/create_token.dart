import 'package:flutter/material.dart';

class CreateToken extends StatefulWidget {
  final String? imageUrl;

  const CreateToken({Key? key, this.imageUrl}) : super(key: key);

  @override
  State<CreateToken> createState() => _CreateTokenState();
}

class _CreateTokenState extends State<CreateToken> {
  TextEditingController _imageController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _symbolController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _supplyController = TextEditingController();
  TextEditingController _decimalsController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _parametersController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.imageUrl != null) {
      _imageController.text = widget.imageUrl!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            const Text(
              'Token Creation',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const Text(
              'Create your Tokens to raise funds',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black38,
              ),
            ),
            SizedBox(height: 20),
            _buildFormField('Token image*', 'Enter Token image', _imageController),
            SizedBox(height: 20),
            _buildFormField('Token Name*', 'Enter Token Name', _nameController),
            SizedBox(height: 20),
            _buildFormField('Token Symbol*', 'Enter Token Symbol', _symbolController),
            SizedBox(height: 20),
            _buildFormField('Token Description*', 'Enter Token Description', _descriptionController),
            SizedBox(height: 20),
            _buildFormField('Token Supply*', 'Enter Token Supply', _supplyController),
            SizedBox(height: 20),
            _buildFormField('Token Decimals*', 'Enter Token Decimals', _decimalsController),
            SizedBox(height: 20),
            _buildFormField('Token Price*', 'Enter Token Price', _priceController),
            SizedBox(height: 20),
            _buildFormField('Token Parameters*', 'Enter Token Parameters', _parametersController),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 450,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    // Add your logic here
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green,
                  ),
                  child: Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormField(String label, String hint, TextEditingController controller) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}