import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Shopify"),
      ),
      body: Column(
        children: [
          Align(alignment: Alignment.center,child: Text("our products",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
          SizedBox(height: 20,),
          Container(
            height: 250,
            child: Expanded(
              child: PageView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(elevation: 8,child: Image.network("https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png",fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(elevation: 8,child: Image.network("https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/1.png",fit: BoxFit.fill,)),
                  )

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 16,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context,index){
                return Card(
                  elevation: 8,
                  // i want it same as box
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Image.network("https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"),
                      ),
                      Positioned(
                        bottom: 10,
                          left: 10,
                          child: Text("Product Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                      Positioned(
                        bottom:10,
                          right :10 ,
                          child: InkWell(child: Icon(Icons.add_shopping_cart_rounded),onTap: (){
                            // display snackbar that item added to cart
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Item added to cart"),));
                          },))

                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20,),
          Text("hot offers",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context,index){
                return Card(
                  elevation: 8,
                  // i want it same as box
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Image.network("https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 30,
                          child: Text("Product Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),


                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),

    );

  }
}
