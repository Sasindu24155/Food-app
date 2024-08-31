import 'package:flutter/material.dart';
import 'package:food_app/Screen/Search/search.dart';
import 'package:food_app/Screen/home_Screen/single_Item.dart';
import 'package:food_app/Screen/my_profile/my_profile.dart';
import 'package:food_app/Screen/review_cart/%20review_cart.dart';
import 'package:food_app/providers/product_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  
  Widget singleProduct({
    required String productImage,
    required String productName,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 250,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            Expanded(
              child: Image.network(
                productImage,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '50\$/50 Gram',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 8),
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '50 Gram',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 15,
                              ),
                              Text('1'),
                              Icon(
                                Icons.add,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


   Widget customListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: Container(
          color: Colors.green[100],
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSONiYH3YAGFL9AkU3-P1D4DXP9HxassB7DRk9iezEjuy_P6eeZqVkVRp8dJDZye1uuLZY&usqp=CAU'),
                        backgroundColor: Colors.green,
                        radius: 40,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome Guest"),
                        SizedBox(height: 7),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text("Login")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              customListTile(
                icon: Icons.home_outlined,
                title: "Home",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen()));
                },
              ),
              customListTile(
                icon: Icons.shopping_cart_outlined,
                title: "Cart",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => reviewCart())); // Define CartScreen separately
                },
              ),
              customListTile(
                icon: Icons.person_outline,
                title: "Profile",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyProfile())); // Define ProfileScreen separately
                },
              ),
              customListTile(
                icon: Icons.notifications_active_outlined,
                title: "Notification",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen())); // Define NotificationScreen separately
                },
              ),
              customListTile(
                icon: Icons.star_border,
                title: "Rating & Review",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen())); // Define RatingReviewScreen separately
                },
              ),
              customListTile(
                icon: Icons.favorite_border_outlined,
                title: "Wishlist",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen())); // Define WishlistScreen separately
                },
              ),
              customListTile(
                icon: Icons.copy_sharp,
                title: "Raise a Complaint",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen())); // Define ComplaintScreen separately
                },
              ),
              customListTile(
                icon: Icons.format_quote_outlined,
                title: "FAQs",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen())); // Define FAQScreen separately
                },
              ),
              SizedBox(height: 20),
              Container(
                height: 150,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact Support"),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Call us:"),
                        SizedBox(width: 10),
                        Text("+94701090807"),
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text("Mail us:"),
                          SizedBox(width: 10),
                          Text("sasindu@gmail.com"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
           
            backgroundColor: Colors.green.shade300,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(),),);
              },
              icon: Icon(
              Icons.search,
              size: 20,
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              child: Icon(
                Icons.shop,
                size: 17,
              ),
              radius: 12,
              backgroundColor: Colors.green.shade100,
            ),
          ),
        ],
        backgroundColor: Colors.green.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://img.freepik.com/premium-photo/verdant-symphony-vegetables-dark-background-with-fiery-depth_954894-4053.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1722038400&semt=ais_user',
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 120, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green.shade600,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Vegi',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.green,
                                      blurRadius: 3,
                                      offset: Offset(3, 3),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '30% Off',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'On all vegetable products',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs Seasonings', style: TextStyle(fontSize: 20)),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: "Fresh Basil",
                          productImage: 'https://lacorsaria.com/wp-content/uploads/2019/05/la-corsaria-fresh-basil.jpg',
                          productDescription: 'Fresh basil with aromatic flavor.',
                          productPrice: '\$5.00',
                        ),
                      ));
                    },
                    productImage:
                        'https://lacorsaria.com/wp-content/uploads/2019/05/la-corsaria-fresh-basil.jpg',
                    productName: "Fresh Basil",
                  ),
                  singleProduct(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: "Fresh Mint",
                          productImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX4uX1fxzkmdVwHGyzIOlUkK9aCGHrqj6NiA&s',
                          productDescription: 'Fresh mint leaves with a refreshing flavor.',
                          productPrice: '\$4.00',
                        ),
                      ));
                    },
                    productImage:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX4uX1fxzkmdVwHGyzIOlUkK9aCGHrqj6NiA&s',
                    productName: "Fresh Mint",
                  ),
                  singleProduct(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: "Rosemary",
                          productImage: 'https://www.freshco.com.sg/cdn/shop/products/Rosemary2.jpg?v=1586695448',
                          productDescription: 'Rosemary herbs for a fragrant addition to your meals.',
                          productPrice: '\$6.00',
                        ),
                      ));
                    },
                    productImage:
                        'https://www.freshco.com.sg/cdn/shop/products/Rosemary2.jpg?v=1586695448',
                    productName: "Rosemary",
                  ),
                  singleProduct(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: "Fresh Coriander",
                          productImage: 'https://images.deliveryhero.io/image/darkstores/sgp/ban_choon/20211014/08886458115518_01.jpg?height=480',
                          productDescription: 'Fresh coriander leaves for a zesty kick.',
                          productPrice: '\$4.50',
                        ),
                      ));
                    },
                    productImage:
                        'https://images.deliveryhero.io/image/darkstores/sgp/ban_choon/20211014/08886458115518_01.jpg?height=480',
                    productName: "Fresh Coriander",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruit', style: TextStyle(fontSize: 20)),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: "Berries",
                          productImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTWG-Fi8gX0a-1XihnGWag9GfFVQ0vNwitQ&s',
                          productDescription: 'A mix of fresh, juicy berries.',
                          productPrice: '\$7.00',
                        ),
                      ));
                    },
                    productImage:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTWG-Fi8gX0a-1XihnGWag9GfFVQ0vNwitQ&s',
                    productName: "Berries",
                  ),
                  singleProduct(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: "Watermelon",
                          productImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ5g54C1YGUZuAhrVOD4YoWXR2PVvQqG2kzg&s',
                          productDescription: 'Sweet and refreshing watermelon.',
                          productPrice: '\$10.00',
                        ),
                      ));
                    },
                    productImage:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ5g54C1YGUZuAhrVOD4YoWXR2PVvQqG2kzg&s',
                    productName: "Watermelon",
                  ),
                  singleProduct(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: "Banana",
                          productImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY8bSoZRsoX2Qlk-TSU9ZGA1ZlK4KYOQAjmQ&s',
                          productDescription: 'Fresh bananas for your daily nutrition.',
                          productPrice: '\$2.00',
                        ),
                      ));
                    },
                    productImage:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY8bSoZRsoX2Qlk-TSU9ZGA1ZlK4KYOQAjmQ&s',
                    productName: "Banana",
                  ),
                  singleProduct(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: "Grapes",
                          productImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5urczc_SaeU6xf4g__rb7rhzb08ADomdDjw&s',
                          productDescription: 'Juicy grapes perfect for snacking.',
                          productPrice: '\$5.00',
                        ),
                      ));
                    },
                    productImage:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5urczc_SaeU6xf4g__rb7rhzb08ADomdDjw&s',
                    productName: "Grapes",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
