
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/fav_screen.dart';
import 'package:food/order_screen.dart';
import 'package:food/sec%20providerr/secound_screen.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<int>  selectedItem = [];
  //List<int> _selectedItem = [];
 // List<int> get selectedItem => selectedItemmm ;

  // void addItem(int value){
  //    selectedItem.add(value);
  //   setState(() {
  //
  //   });
  //
  // }
  //
  //
  // void removeItem(int value){
  //   selectedItem.remove(value);
  //   setState(() {
  //
  //   });
  //
  // }



  List<String> imageUrls =[
        'https://images.pexels.com/photos/2089717/pexels-photo-2089717.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.pexels.com/photos/825661/pexels-photo-825661.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.pexels.com/photos/2089717/pexels-photo-2089717.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.pexels.com/photos/2282532/pexels-photo-2282532.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];

  List<String> categories =[
            'HamBurger',
            ' Pizza chese',
            ' chese tick',
            'GrilBerger',

  ];

  List<String> price =[
    'Rs.250.0',
    'Ra.350.0',
    'Ra.200.0',
    'Ra.200.0',

  ];

  List<String> description =[
    'A burger is a patty of ground beef grilled and\n placed between two halves of a bun. Slices of\n raw onion, lettuce, bacon, mayonnaise, and\n other ingredients add flavor.. ',
    'A pizza is a patty of ground beef grilled and\n placed between two halves of a bun. Slices of\n raw onion, lettuce, bacon, mayonnaise, and\n other ingredients add flavor..',
    'A stick is a patty of ground beef grilled and\n placed between two halves of a bun. Slices of\n raw onion, lettuce, bacon, mayonnaise, and\n other ingredients add flavor..',
    'A burger is a patty of ground beef grilled and\n placed between two halves of a bun. Slices of\n raw onion, lettuce, bacon, mayonnaise, and\n other ingredients add flavor..',

  ];



 // final List<selectedItem> selectedItem = List.generate(length, (index) => null)

  @override
  Widget build(BuildContext context) {
print('build1');
   final favouriteProvider = Provider.of<FavouriteItemProvider> (context);

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75,left: 19),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/1416736/pexels-photo-1416736.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 50,
                    width: 50,
                    ),
                  ),

              const Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90,left: 270),
                      child: Icon(Icons.notifications_none_outlined),
                    ),
                  ],
                ),
              ]
           ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0,left: 15),
                      child: Text ('CHoose\nYour Favorite',
                        style: TextStyle(
                            color: Colors.black,
                              fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 35,left: 8),
                          child: Text('Food',style: TextStyle(
                            color: Colors.red.shade900,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),),
                        ),
                      ],
                    ),

                  ],
                ),
            SizedBox(height: 8,),
            Row(
              children: [
                SizedBox(width: 295,height: 55,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        fillColor: Colors.grey.shade100,
                        hoverColor: Colors.red,
                        filled: true,
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search_outlined,
                         // color: Colors.black.withOpacity(16),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red.shade900,
                        ),
                        child: Icon(Icons.tune_outlined,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15,),

            DefaultTabController(length: 4,
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red.shade900,
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
                            child: Text("All",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ) ),

                    Tab(
                        child:Container(
                          height: 50,
                          width: 95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Pizza"),
                          ),
                        ) ),

                    Tab(
                        child:Container(
                          height: 50,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Burger"),
                          ),
                        ) ),

                    Tab(
                        child:Container(
                          height: 50,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.red.shade900,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("sandwich"),
                          ),
                        ),
                    ),
                  ],
                ),
            ),
            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text('Popular Food',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 210),
                        child: Text('See All',style: TextStyle(
                            color: Colors.red.shade900,
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                        ),),
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 6,),

            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                  itemBuilder: (context,index){
                  return Consumer<FavouriteItemProvider>(builder: (context,value,child){
                    print('build2');
                    return Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(imageUrls[index]),
                            fit: BoxFit.cover,
                          )
                      ),
                      width: 145,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5,left: 114,),
                                child: GestureDetector(
                                  onTap: (){
                                    // selectedItem.add(index);
                                    if(favouriteProvider.selectedItem.contains(index)){
                                      favouriteProvider.removeItem(index);
                                    }else{
                                      favouriteProvider.addItem(index);
                                    }
                                    // setState(() {
                                    //
                                    // });
                                  },
                                  child: Icon(favouriteProvider.selectedItem.contains(index) ? Icons.favorite : Icons.favorite_border_outlined,color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 125,left: 5),
                                child: Text(categories[index],style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),),
                              ),
                              // SizedBox(width: 10,),


                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(price[index],style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),),
                              ),

                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0,left: 45),
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderScreen(imageUrls: imageUrls[index], categories: categories[index],price: price[index],description: description[index],)));
                                      },
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: Colors.red.shade900,
                                        ),
                                        child: Icon(
                                            size: 20,
                                            color: Colors.white,
                                            Icons.add),
                                      ),
                                    ),
                                  )
                                ],
                              ),


                            ],
                          ),
                        ],
                      ),

                    );
                  });

                  }
              ),
            ),
            SizedBox(height: 8,),
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 8),
               child: Text('Nearest',style: TextStyle(
                 fontWeight: FontWeight.w600,
                 fontSize: 16,
               ),),
             ),

             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 260),
                   child: Text('See All',style: TextStyle(
                     color: Colors.red.shade900,
                     fontSize: 16,
                     fontWeight: FontWeight.w600,
                   ),),
                 ),
               ],
             ),

           ],
         ),
            SizedBox(height: 8,),
            Stack(
              children: [
               SizedBox(
                 height: 220,
                 child:  ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: imageUrls.length,
                     itemBuilder: (context, index){
                       return Container(
                         margin: EdgeInsets.all(5),
                         width: 145,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           image: DecorationImage(
                             image: NetworkImage(imageUrls[index]),
                             fit: BoxFit.cover
                           ),
                           color: Colors.red
                         ),
                         child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 125,left: 5),
                               child: Text(categories[index],style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.w600,
                               ),),
                             ),
                             Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 130,left: 35),
                                   child: Container(
                                     height: 20,
                                     width: 20,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(4),
                                       color: Colors.red.shade900,
                                     ),
                                     child: Icon(
                                         size: 20,
                                         color: Colors.white,
                                         Icons.add),
                                   ),
                                 )
                               ],
                             )
                           ],
                         ),
                       );

                     }),
               ),
                Padding(
                  padding: const EdgeInsets.only(top: 150,left: 25),
                  child: Container(
                    height: 60,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red.shade900,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Icon(Icons.home_outlined,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FavScreen()));
                            },
                              child: Icon(Icons.favorite_border_outlined,color: Colors.white,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Icon(Icons.person,color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class favouritee {
  List<int>_selectedItem=[];

  List<int> get selectedItem => _selectedItem ;

  void addItem(int value){
    _selectedItem.add(value);

  }
  void removeItem(int value){
    _selectedItem.remove(value);


  }




}
