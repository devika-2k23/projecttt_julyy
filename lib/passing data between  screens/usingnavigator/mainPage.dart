import 'dart:js';
import 'package:flutter/material.dart';
import 'detailsPage.dart';
import 'dummydata.dart';

void main(){
  runApp(MaterialApp(
    home: ProductMain(),
    routes: {
      'details':(context)=>ProductDetails()
    },
  ));
}

class ProductMain extends StatelessWidget {
  const ProductMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   body: Padding(
      // padding: const EdgeInsets.all(15.0),
      // child: ListView(
      // padding: EdgeInsets.all(15),
      // children: products.map((product)=> ListTile(
      // leading: Image.asset(product['Image']),
      //         title: Text(product['Name']),
      //         subtitle: Text('${product['Price']}rs'),
      //       )).toList(),
      //     ),
      //   ),

      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        // children: products.map((product) => Column(
        //   children: [
        //     InkWell(
        //       onTap: ()=> Navigator.of(context).pushNamed('details',arguments: product['id']),
        //       child: Card(
        //         child: Container(
        //           height: 200,
        //           decoration: BoxDecoration(
        //               image: DecorationImage(
        //                   fit: BoxFit.cover,
        //                   image: AssetImage(product['image']))
        //           ),
        //         ),
        //       ),
        //     ),
        //     Text(product['name']),
        //     Text('${product['price']}rs')
        //   ],
        // )).toList() ,
        children: List.generate(products.length, (index) => Card(
          child: Column(
            children: [
            Container(
                       height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                             fit: BoxFit.contain,
                             image: NetworkImage(products[index]["image"] )))),

              Text(products[index]['name']),
                Text('${products[index]['price']}\$'),
               ],
          ),
          ),
        )),);
  }
}