import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Cart'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('sold products 5'
          ,style: TextStyle(fontSize: 25, color: Colors.redAccent),),
      ),
    );
  }
}
