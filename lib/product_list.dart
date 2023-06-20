import 'package:flutter/material.dart';
import 'cart_page.dart';
class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int _counter=0;
  void _incrementCounter(){
   setState(() {
     _counter++;
     if (_counter == 5) {
       showDialog(
         context: context,
         builder: (BuildContext context) {

           return AlertDialog(
             title: const Text("Congratulations!"),
             content:const Text("You've bought 5"),
             actions: [
               ElevatedButton(
                 child: const Text('OK'),
                 onPressed: () {
                   Navigator.pop(context);
                 },
               ),
             ],
           );
         },
       );
     }
   });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Product List'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Column(
                   children: [
                     Text('Apple 1kg',
                       style: TextStyle(fontSize:20 ,color: Colors.purple),
                     ),
                      SizedBox(height: 5,),
                      Text('Prize:250tk',
                        style: TextStyle(fontSize: 15),),
                   ],
                 ),
                  Column(
                    children: [
                     Text('counter:$_counter',
                       style: TextStyle(fontSize: 20, color: Colors.purple),),
                      ElevatedButton(onPressed: (){
                        _incrementCounter();
                      },
                          child: const Text('Buy Now',style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Banana',
                        style: TextStyle(fontSize:20 ,color: Colors.purple),
                      ),
                      SizedBox(height: 5,),
                      Text('Prize:10tk',
                        style: TextStyle(fontSize: 15),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('counter:$_counter',
                        style: TextStyle(fontSize: 20, color: Colors.purple),),
                      ElevatedButton(onPressed: (){
                        _incrementCounter();
                      },
                        child: const Text('Buy Now',style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Orange 1kg',
                        style: TextStyle(fontSize:20 ,color: Colors.purple),
                      ),
                      SizedBox(height: 5,),
                      Text('Prize:200tk',
                        style: TextStyle(fontSize: 15),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('counter:$_counter',
                        style: TextStyle(fontSize: 20, color: Colors.purple),),
                      ElevatedButton(onPressed: (){
                        _incrementCounter();
                      },
                        child: const Text('Buy Now',style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Guava 1kg',
                        style: TextStyle(fontSize:20 ,color: Colors.purple),
                      ),
                      SizedBox(height: 5,),
                      Text('Prize:50tk',
                        style: TextStyle(fontSize: 15),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('counter:$_counter',
                        style: TextStyle(fontSize: 20, color: Colors.purple),),
                      ElevatedButton(onPressed: (){
                        _incrementCounter();
                      },
                        child: const Text('Buy Now',style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Mango 1kg',
                        style: TextStyle(fontSize:20 ,color: Colors.purple),
                      ),
                      SizedBox(height: 5,),
                      Text('Prize:60tk',
                        style: TextStyle(fontSize: 15),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('counter:$_counter',
                        style: TextStyle(fontSize: 20, color: Colors.purple),),
                      ElevatedButton(onPressed: (){
                        _incrementCounter();
                      },
                        child: const Text('Buy Now',style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(' Grapes 1kg',
                        style:  TextStyle(fontSize:20 ,color: Colors.purple),
                      ),
                      SizedBox(height: 5,),
                      Text('Prize:350tk',
                        style:  TextStyle(fontSize: 15),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('counter:$_counter',
                        style: TextStyle(fontSize: 20, color: Colors.purple),),
                      ElevatedButton(onPressed: (){
                        _incrementCounter();
                      },
                        child: const Text('Buy Now',style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent,
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (_)=>CartPage(),
              ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
