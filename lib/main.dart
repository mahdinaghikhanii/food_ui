import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'const.dart';
import 'models/foodcategory.dart';
import 'models/foodtrending.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<FoodCategory> foodCategory = [
    FoodCategory(
        foodName: 'Salad',
        imageUrl:
            'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
    FoodCategory(
        foodName: 'Pizza',
        imageUrl:
            'https://images.unsplash.com/photo-1622219773524-eaaa721c760d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
    FoodCategory(
        foodName: 'Cake',
        imageUrl:
            'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80'),
    FoodCategory(
        foodName: 'Burger',
        imageUrl:
            'https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=722&q=80'),
    FoodCategory(
        foodName: 'Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1609951651556-5334e2706168?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
  ];

  List<FoodTrending> foodTrendings = [
    FoodTrending(
        foodName: 'Food1',
        review: '500 Reviews',
        calories: '100-300 calories',
        price: '\$12',
        imageUrl:
            'https://images.unsplash.com/photo-1455853659719-4b521eebc76d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
    FoodTrending(
        foodName: 'Food2',
        review: '500 Reviews',
        calories: '100-300 calories',
        price: '\$50',
        imageUrl:
            'https://images.unsplash.com/photo-1513456852971-30c0b8199d4d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'),
    FoodTrending(
        foodName: 'Food3',
        review: '500 Reviews',
        calories: '100-300 calories',
        price: '\$22',
        imageUrl:
            'https://images.unsplash.com/photo-1582993728648-1f29c748e5ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'),
    FoodTrending(
        foodName: 'Food4',
        review: '500 Reviews',
        calories: '100-300 calories',
        price: '\$30',
        imageUrl:
            'https://images.unsplash.com/photo-1574521594448-efc5905a7b8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                const SizedBox(height: 20),
                _search(),
                const SizedBox(height: 20),
                _cardOrder(),
                const SizedBox(height: 14),
                _category(),
                const SizedBox(height: 14),
                _foodTrending(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _bottomBar(),
    );
  }

  BottomNavigationBar _bottomBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.home,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.home5,
            size: 28,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.document,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.document5,
            size: 28,
          ),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.chart_2,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.chart_215,
            size: 28,
          ),
          label: 'Stats',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.lovely,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.lovely5,
            size: 28,
          ),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.user,
            size: 28,
          ),
          activeIcon: Icon(
            Iconsax.profile_add5,
            size: 28,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: index,
      unselectedItemColor: Colors.grey,
      selectedItemColor: primaryColor,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle:
          GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),
      selectedLabelStyle:
          GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
    );
  }

  Column _foodTrending() {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Trending Now",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xfff1f1ef),
            elevation: 0,
            height: 28,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            child: Text(
              "View All",
              style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.78,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: foodTrendings.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            //onpress
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 110,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      '${foodTrendings[index].imageUrl}',
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(height: 8),
              Text(
                "${foodTrendings[index].foodName}",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                "${foodTrendings[index].review}",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Text(
                "${foodTrendings[index].calories}",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              // const SizedBox(height: 8),
              Text(
                "${foodTrendings[index].price}",
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  Column _category() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Browse by category",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
            MaterialButton(
              onPressed: () {},
              color: Color(0xfff1f1ef),
              elevation: 0,
              height: 28,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Text(
                "View All",
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        Container(
            height: 118,
            child: ListView.builder(
              itemCount: foodCategory.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemExtent: 100,
              itemBuilder: ((context, index) => Column(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              '${foodCategory[index].imageUrl}',
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "${foodCategory[index].foodName}",
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
            ))
      ],
    );
  }

  Row _header() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome,",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
            Text(
              "Montree MT",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        ),
        const Spacer(),
        const Icon(
          Iconsax.shopping_cart,
          size: 28,
        ),
        const SizedBox(
          width: 20,
        ),
        const Icon(
          Iconsax.notification,
          size: 28,
        )
      ],
    );
  }

  TextField _search() {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search food, drink, etc',
          hintStyle:
              GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),
          filled: true,
          prefixIcon: Icon(Iconsax.search_favorite),
          prefixIconColor: primaryColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              28,
            ),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.all(14)),
    );
  }

  ClipRRect _cardOrder() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          SizedBox(
            height: 144,
            width: double.infinity,
            child: Image.network(
              'https://images.unsplash.com/photo-1466814314367-45323ac74e2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1185&q=80',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Burger and Sweet",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Up to 3 times per day",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 6),
                MaterialButton(
                  onPressed: () {},
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
