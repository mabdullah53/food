import 'package:flutter/material.dart';
import 'package:food/sec%20providerr/secound_screen.dart';
import 'package:provider/provider.dart';

import 'order_screen.dart';

class FavScreen extends StatefulWidget {
   FavScreen({super.key,  });

  // String imageUrls;
  // String categories;
  // String price;
  // String description;

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {

  List<int> selectedItem = [];
  //
  // void addItem(int value){
  //
  //   setState(() {
  //     selectedItem.add(value);
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



  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteItemProvider> (context);
    print('BULD1');
    return Scaffold(

      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75,left: 19),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: NetworkImage('https://images.pexels.com/photos/1416736/pexels-photo-1416736.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                        )
                    ),
                    height: 50,
                    width: 50,
                  ),
                ),

                Row(
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
                child: Text('CHoose\nYour Favorite',
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
          SizedBox(height: 20,),

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

          SizedBox(height: 20,),

          SizedBox(
            height: 220,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: favouriteProvider.selectedItem.length,
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
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderScreen(imageUrls: imageUrls[index], categories: categories[index],price: price[index], description: description[index],)));
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
        ],
      ),
    );
  }
}
