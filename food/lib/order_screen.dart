import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/home_screen.dart';

class OrderScreen extends StatefulWidget {

   OrderScreen({  super.key,required this.imageUrls,required this.categories,required this.price,required this.description });

String imageUrls;
String categories;
String price;
String description;

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  int count = 0;

  void setCount () {
    count++;
    setState(() {

    });
  }

  void decCount () {

    setState(() {
      if(count > 0){
        count--;
      }

    });
  }



  List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(widget.imageUrls),
                    fit: BoxFit.cover
                  ),
                ),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 15),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text('<',style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40,left: 270),
                          child: Icon(Icons.more_vert,color: Colors.white,),
                        )
                      ],
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(widget.categories,style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600
                ),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Text(widget.price,style: TextStyle(
                      color: Colors.red.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 85),
            child: DefaultTabController(
                length: 2,
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red.shade900
                  ),
                  indicatorColor: Colors.white,
                  labelColor: Colors.white,
                  isScrollable: true,
                  tabs: [
                    Tab(
                        child:Container(
                          height: 50,
                          width: 95,
                          decoration: BoxDecoration(
                            //  color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Details",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ) ),

                    Tab(
                        child:Container(
                          height: 50,
                          width: 95,
                          decoration: BoxDecoration(
                            //  color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Reviews",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ) ),
                  ],
                ),
            ),
          ),
          SizedBox(height: 18,),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(widget.description,style: TextStyle(
                  fontSize: 15
                ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 65,left: 95),
                    child: Text('See more.',style: TextStyle(
                        color: Colors.red.shade900,
                      fontWeight: FontWeight.w600
                    ),),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 45,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: GestureDetector(
                  onTap: (){
                    decCount();
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red.shade900,
                    ),
                    child: Center(
                      child: Text('-',style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 26,
                      ),),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Row(
                  children: [
                    Text('$count',style: TextStyle(
                      fontSize: 20
                    ),),
                  ],
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: (){
                        setCount();
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red.shade900,
                        ),
                        child: Center(
                          child: Text('+',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Row(
                    children: [
                      Container(
                        height: 55,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red.shade900
                        ),
                        child: Center(
                          child: Text('Add to Cart',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
