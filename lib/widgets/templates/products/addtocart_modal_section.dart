import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 240,
        padding: EdgeInsets.all(20),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              // text field section
              Expanded(
                child: TextField(
                    decoration: InputDecoration(
                  labelText: 'Enter text',
                )),
              ),

              SizedBox(
                width: 14,
              ),
              // plus minus and add to card
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            print('Add');
                          },
                          icon: Icon(Icons.add),
                          label: Text('Add'),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            print('Add');
                          },
                          icon: Icon(Icons.remove),
                          label: Text('Decrease'),
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, // background color
                              backgroundColor: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: 180,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          print('Add');
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.add),
                        label: Text('Add To Cart'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // background color
                            foregroundColor: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ])));
  }
}
