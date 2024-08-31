import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  final bool isBool;
  SearchItem({required this.isBool});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: Center(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTWG-Fi8gX0a-1XihnGWag9GfFVQ0vNwitQ&s'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              child: Column(
                mainAxisAlignment: isBool == false
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Product Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "50\$/50 Grame",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  isBool == false
                      ? Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "50 Grame",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Center(
                                child: Icon(Icons.arrow_drop_down),
                              )
                            ],
                          ),
                        )
                      : Text("50 Gram")
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              padding: isBool == false
                  ? EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                  : EdgeInsets.only(left: 15, right: 15),
              child:isBool==false?  Container(
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.black54,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ):Column(
                children: [
                  Icon(Icons.delete
                  ),
                  SizedBox(height: 5,),
                   Container(
                height: 25,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.black54,size: 20,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              )
                  
                ],
              )
            ),
          ),
         
        ],
      ),
    ),
     isBool==false?Container():Divider(
            color: Colors.black45,
            height: 1,
            )
      ],
    );
    
  }
}
