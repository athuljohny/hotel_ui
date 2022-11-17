import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotel(),
  ));
}

class Hotel extends StatelessWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon((Icons.favorite_border_rounded)),
          )
        ],
        bottom: PreferredSize(
            preferredSize: Size(200, 150),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Text(
                    'Type your Location',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Ernakulam, Kerala',
                          border: InputBorder.none),
                    ),
                  ),
                )
              ],
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Categery(
                  iconData: Icons.hotel,
                  catname: 'Hotel',
                  bgcolor: Colors.pink,
                ),
                Categery(
                  iconData: Icons.restaurant,
                  catname: 'Restaurant',
                  bgcolor: Colors.blueAccent,
                ),
                Categery(
                  iconData: Icons.local_cafe,
                  catname: 'Cafe',
                  bgcolor: Colors.orange,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 70,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 300,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3_wgrBdvVdL_jhwRqwAoE7bc2kRhQuadJoNJSiAN0&s'))),
                        ),
                        Positioned(
                            right: 14,
                            top: 14,
                            child: Icon(
                              Icons.star_border,
                              color: Colors.white,
                            )),
                        Positioned(
                            right: 20,
                            bottom: 30,
                            child: Container(
                              color: Colors.white70,
                              height: 4,
                              width: 4,
                              child: Center(child: Text('\$40')),
                            ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Awesome room near Kochi',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Kochi, Kerala',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Text(
                                '  (220 reviews)',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Categery extends StatelessWidget {
  final Color bgcolor;
  final String catname;
  final IconData iconData;

  Categery(
      {required this.iconData, required this.catname, required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            Text(
              catname,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
