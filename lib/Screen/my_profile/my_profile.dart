import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override

Widget listTile({required IconData icon,required String title,}){
  return Column(
    children: [
      Divider(
        height: 20,
      ),
      ListTile(
        leading:Icon(icon),
        title: Text(title),
        trailing:Icon(Icons.arrow_forward_ios)
      )
    ],
  );
}




  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        elevation: 0.0,
        title: Text("My Profile", style: TextStyle(
          fontSize: 20,
          color: Colors.black
        ),)
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.green[200],
              ),
              Container(
                height: 716,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Sasindu Senevirathna",
                                  style: 
                                  TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  )
                                  ),
                                  SizedBox(height: 10,),
                                   Text("sasindu@gmail.com"),
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.green[200],
                                child:CircleAvatar(
                                  radius: 13,
                                  child: Icon(Icons.edit),
                                ) ,
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                    listTile(icon: Icons.shop_outlined, title: "My Orders"),
                    listTile(icon: Icons.location_on_outlined, title: "My Delivary Address"),
                    listTile(icon: Icons.person, title: "Refer A Friends"),
                    listTile(icon: Icons.file_copy_outlined, title: "Terms & Conditions"),
                    listTile(icon: Icons.policy_outlined, title: "Privacy Policy"),
                    listTile(icon: Icons.add_chart, title: "About"),
                    listTile(icon: Icons.exit_to_app_outlined, title: "Log Out"),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green[700],
              child: CircleAvatar(
               backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSONiYH3YAGFL9AkU3-P1D4DXP9HxassB7DRk9iezEjuy_P6eeZqVkVRp8dJDZye1uuLZY&usqp=CAU'),
                radius: 45,
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}