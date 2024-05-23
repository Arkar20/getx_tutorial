import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                  onPressed: () {
                    context.go('/');
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'My Cart',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              )),
          Expanded(
              child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(4),
                      child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(8)),
                          child: ListTile(
                            title: Text("9x12"),
                            subtitle: Text('12kaye'),
                            trailing: IconButton(
                                onPressed: () {}, icon: Icon(Icons.remove)),
                          )),
                    );
                  })),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "4000Kyat",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Paynow',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    )));
  }
}
