import 'package:flutter/material.dart';
import 'package:food_ui/theme/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
  int index = 0;

  bool loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading == true
          ? Center(
              child: LoadingAnimationWidget.twistingDots(
                leftDotColor: const Color(0xFF1A1A3F),
                rightDotColor: const Color(0xFFEA3799),
                size: 50,
              ),
            )
          : SingleChildScrollView(
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
            color: const Color(0xfff1f1ef),
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
              color: const Color(0xfff1f1ef),
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
        SizedBox(
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
          prefixIcon: const Icon(Iconsax.search_favorite),
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
