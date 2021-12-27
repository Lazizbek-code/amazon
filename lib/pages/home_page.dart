import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: const Image(
                image: AssetImage("assets/images/amazon_logo.png"),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.mic, color: Colors.white,),
                    onPressed: () {
                      
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.white,),
                    onPressed: () {
                      
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        
        color: Colors.grey[300],
        child: Column(
          children: [
            // # Search 
            Container(
              padding: EdgeInsets.only(left: 10, right: 10,bottom: 10),
              color: Color(0xFF018197),
              child:Container(
                height: 50,
                padding: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color:Colors.grey,
                    width: 1,
                  ),
                  borderRadius:BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children:[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for?",
                          border:InputBorder.none,
                          icon: Icon(Icons.search, color: Color(0xFF018197),)
                        ),
                      ),
                    ),
                    Icon(Icons.camera_alt, color: Color(0xFF018197),)
                  ]
                ),
              )
            ),

            Expanded(
              child: ListView(
                children: [
                  // #location
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child:Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("Deliver to Korea, Respublic of", style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ),

                  // Reklama

                  Container(
                    height: 140,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width:180,
                          color: Colors.white,
                          child: Center(
                            child: Text("We ship 45 million products", style: TextStyle(color: Colors.black54, fontSize: 16),),
                          ),
                        ),
                        Expanded(
                          child:Container(
                              color: Colors.white,
                              child:Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(70), bottomLeft: Radius.circular(70)),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/image_1.jpeg"),
                                      fit: BoxFit.cover
                                    )
                                ),
                            )
                          )
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 8,),
                  // #Sign in
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sign in for the best experience", style: TextStyle(color: Colors.black, fontSize: 18),),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.orange,
                          width: double.infinity,
                          height: 50,
                          child: Center(
                            child:Text("Sign in", style: TextStyle(color: Colors.black, fontSize: 18),)
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Create an account", style: TextStyle(color: Colors.blue, fontSize: 18),)
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  // #Dill
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Deal of the Day", style: TextStyle(color: Colors.black, fontSize: 22, ),),
                        SizedBox(height: 10,),
                        Image(
                          width: double.infinity,
                          height: 240,
                          image: AssetImage("assets/images/item_7.jpeg"),
                          fit: BoxFit.cover
                        ),
                        SizedBox(height: 10,),
                        Text("Up to 31% off APC UPS Battery Back", style: TextStyle(color: Colors.black, fontSize: 17, ),),
                        SizedBox(height: 10,),
                        Text("\$10.99 - \$79.9", style: TextStyle(color: Colors.black, fontSize: 17, ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  // # Best
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Best sellers in Electronics", style: TextStyle(color: Colors.black, fontSize: 22, ),),
                        SizedBox(height: 10,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_3.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_2.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width:5),
                              Expanded(
                                child: Column(
                                  children: [
                                     Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_4.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_5.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Top products in Camera", style: TextStyle(color: Colors.black, fontSize: 22, ),),
                        SizedBox(height: 10,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children:[
                              Expanded(
                                child:Container(
                                  width: double.infinity,
                                  child: Image(
                                      image: AssetImage("assets/images/item_1.jpeg"),
                                      fit: BoxFit.cover,
                                  ),

                                )
                              ),
                              SizedBox(height: 5,),
                              Expanded(
                                child:Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                      child: Image(
                                        height: double.infinity,
                                        width: double.infinity,
                                        image: AssetImage("assets/images/item_6.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Expanded(
                                      child: Image(
                                        width: double.infinity,
                                        height: double.infinity,
                                        image: AssetImage("assets/images/item_7.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    ],
                                  ),
                                )
                              ),
                            ]
                          ),
                        )
                      ],
                    ),
                  ), 
                  SizedBox(height: 8,),
                ],
              )
            )
          ],
        ),
      ),
      drawer: Drawer(

      ),
      
    );
  }
}