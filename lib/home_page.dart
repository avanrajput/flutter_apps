import 'package:flutter/material.dart';
import 'package:myntra_clone/data/products.dart';
import 'package:myntra_clone/insider_page.dart';
import 'package:myntra_clone/widgets/categories.dart';
import 'package:myntra_clone/widgets/product_widget.dart';
import 'package:myntra_clone/widgets/slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List containerDetails = [
    {'icon': Icons.verified, 'first': '100% Original', 'second': 'Products'},
    {
      'icon': Icons.currency_rupee,
      'first': 'Free Shipping',
      'second': 'On 1st Order'
    },
    {
      'icon': Icons.local_shipping_sharp,
      'first': 'Easy Returns',
      'second': '& Refunds'
    },
  ];

  List<String> availableCategories = [
    'All',
    'Kurta Sets',
    'Shirts',
    'Casual Shoes',
    'Flip Flops',
    'Flats',
    'Dresses',
    'Kurtas',
    'Jeans'
  ];

  String selectedCategory = 'All';

  int productLength = 8;

  void onViewMore() {
    if (products.length > productLength) {
      setState(() {
        productLength += 8;
      });
    } else {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No More Products'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 3,
            title: const Text(
              'Myntra',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            titleSpacing: 0.0,
            shadowColor: Colors.grey[200],
            actions: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.add_box_outlined),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.favorite_border),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: const Icon(Icons.shopping_bag_outlined),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InsiderPage()));
                  },
                ),
              )
            ]),
        drawer: const Drawer(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const Categories(),
            Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Container(
                    //margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 110,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 12),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.cyan,
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(children: [
                        const Text('FLAT ₹200 OFF',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        const Text(
                          '+ FREE SHIPPING & MORE EXCITING OFFERS',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                        const SizedBox(height: 6),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                  text: "Only On The ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0Xfffbc497),
                                      fontWeight: FontWeight.bold)),
                              WidgetSpan(
                                  child: SizedBox(
                                      width: 25,
                                      child: Image.asset(
                                        'assets/images/Myntra_logo.png',
                                      ))),
                              const TextSpan(
                                  text: ' App',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0Xfffbc497),
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 16,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Download Now',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 2),
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 8,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Image.asset('assets/images/MobileApp.png')),
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                      color: Color(0Xfffbc497),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(6, 2, 8, 2),
                      child: Text(
                        'NEW ON MYNTRA?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 28),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign Up For Exciting Deals!',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        height: 13,
                        width: 13,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 12,
                        ),
                      )
                    ],
                  )),
            ),
            const SliderWidget(),
            SizedBox(
              height: 50,
              child: GridView.builder(
                padding: const EdgeInsets.all(8),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 3),
                itemCount: containerDetails.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = containerDetails[index];
                  return Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            item['icon'],
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              item['first'],
                              style: const TextStyle(
                                fontSize: 8.5,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              item['second'],
                              style: const TextStyle(
                                fontSize: 8.5,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 5,
              color: Colors.grey[300],
            ),
            Container(
              height: 5,
              color: Colors.grey[200],
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: availableCategories.map((category) {
                  bool isSelected = category == selectedCategory;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ChoiceChip(
                      label: Text(
                        category,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.pink : Colors.black,
                        ),
                      ),
                      side: BorderSide(
                        color: isSelected ? Colors.pink : Colors.grey,
                      ),
                      selected: false, //isSelected,
                      selectedColor: Colors.white,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onSelected: (bool value) {
                        setState(() {
                          if (value) {
                            selectedCategory = category;
                          } else {
                            selectedCategory = 'All';
                          }
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: productLength * MediaQuery.of(context).size.height / 6,
              child: GridView.builder(
                padding: const EdgeInsets.all(8),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.64,
                ),
                itemCount: productLength,
                itemBuilder: (BuildContext context, int index) {
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.all(1),
                    child: ProductWidget(product: product),
                  );
                },
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1.0,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  onPressed: onViewMore,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'View More Products',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
