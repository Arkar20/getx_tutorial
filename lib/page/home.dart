import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/page/orders.dart';
import 'package:getx_tutorial/store/bottom-navigation.dart';
import 'package:getx_tutorial/widgets/product_card.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> products = [
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 1',
      'price': '\$20.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 2',
      'price': '\$30.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 3',
      'price': '\$25.00',
    },
    {
      'img': 'https://via.placeholder.com/150',
      'productName': 'Product 4',
      'price': '\$40.00',
    },
    // Add more products as needed
  ];

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data:
            MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(0.8)),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 12),
            selectedLabelStyle: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12),
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.shop,
                    size: 20.0,
                  ),
                ),
                label: 'POS',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.store,
                    size: 20.0,
                  ),
                ),
                label: 'Orders',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar:
            buildBottomNavigationMenu(context, bottomNavigationController),
        body: SafeArea(
            child: Obx(
          () => IndexedStack(
              index: bottomNavigationController.tabIndex.value,
              children: [HomeSection(products: products), OrderPage()]),
        )));
  }
}

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
    required this.products,
  });

  final List<Map<String, String>> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12, 12, 10, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    'Hi Arkar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '23 Jan 2001',
                    style: TextStyle(color: Colors.blue[200]),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(12),
                child: IconButton(
                  onPressed: () {
                    context.go('/shopping-cart');
                  },
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          //search bar
          Container(
              decoration: BoxDecoration(
                  color: Colors.blue[500],
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(12),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Text('Search',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold))
                ],
              )),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Products',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
              Icon(
                Icons.more,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    img: product['img']!,
                    productName: product['productName']!,
                    price: product['price']!,
                  );
                }),
          )
        ],
      ),
    );
  }
}
