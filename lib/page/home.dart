import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/page/orders.dart';
import 'package:getx_tutorial/store/bottom-navigation.dart';
import 'package:getx_tutorial/widgets/layouts/bottom-navigation.dart';
import 'package:getx_tutorial/widgets/product_card.dart';
import 'package:getx_tutorial/widgets/templates/products/addtocart_modal_section.dart';
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

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: const BottomNavigationFooter(),
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
    final isLargeScreen = MediaQuery.of(context).size.width >= 1024;
    final isxLargeScreen = MediaQuery.of(context).size.width >= 1440;

    double getAspectRatio() {
      if (isxLargeScreen) {
        return 0.83;
      }
      return isLargeScreen ? 0.7 : 0.75;
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(4, 4, 4, 0),
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
                child: Badge(
                  label: Text('1'),
                  child: IconButton(
                    onPressed: () {
                      context.go('/shopping-cart');
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                      color: Colors.white,
                    ),
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
                  crossAxisCount: isLargeScreen ? 6 : 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: getAspectRatio(),
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const AddToCart();
                          });
                    },
                    child: ProductCard(
                      img: product['img']!,
                      productName: product['productName']!,
                      price: product['price']!,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
