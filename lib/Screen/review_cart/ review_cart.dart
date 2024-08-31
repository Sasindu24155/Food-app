import 'package:flutter/material.dart';
import 'package:food_app/Screen/widgets/search_single_item.dart';

class  reviewCart extends StatelessWidget {
  const  reviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: const Text("Total Amount"),
        subtitle: Text("\$170.00"),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: const Text("Submit"),
            color: Colors.green[200],
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
            onPressed: () {
          
            },
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text("Reviw Cart",
        style: TextStyle(
          fontSize: 20,
          color: Colors.black
          ),
          ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
           SearchItem(isBool: false),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}