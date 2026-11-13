
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//main app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flipcart UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}
 
// homepage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // note : second Overide create variables
  //variables
  int selectedCategory = 0;
  int selectedBottom = 0;
  List<bool> favourites = [false, false, false, false];
  List<String> catogories = [
    'all',
    'Mobiles',
    'fashios',
    'electrocnics',
    'shoes',
    'grossory',
  ];
  List<Map<String, dynamic>> products = [
    {
      'name': 'Smartphone',
      'price': '₹14,999',
      'image':
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400',
    },
    {
      'name': 'Headphones',
      'price': '₹1,499',
      'image':
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
    },
    {
      'name': 'Smart Watch',
      'price': '₹2,999',
      'image':
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
    },
    {
      'name': 'Shoes',
      'price': '₹1,999',
      'image':
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'flipCart',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      //body
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for products',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.mic),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        //banner
        Container(
          height: 110,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            color:  Colors.orange,
            borderRadius: BorderRadius.circular(14)),
            child: const Column(
              mainAxisAlignment : MainAxisAlignment.center,
              children: [
                Text(
                  'Big shopping Sales',
                  style:TextStyle(
                    color : Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Text(
                  "Up to 50% off",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:  12 ,
                  ),
                ),
              ],
            ),

        ),
        const SizedBox(height: 10),
        //product Tilte
  const Padding(
  padding: EdgeInsets.symmetric(horizontal: 16),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Text(
      'Popular Products',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black

      ),
    ),
  ),
),
      //   const  SizedBox (height:10),
             
      //  Expanded(
      //      child: GridView.builder(padding: const EdgeInsets.all(value), itemBuilder: itemBuilder),
 
          
   //     )

        ],
      ),
    );
    
  }

}

//error
