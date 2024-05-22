
import 'package:flutter/material.dart';
import 'package:getx_tutorial/store/counter.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counter = Get.put(CounterController());
    return  Center(child: Column(
      children: [
        Obx(() => Text('${counter.count}')),
       ElevatedButton(onPressed: counter.increment , child: const Text('Add')),
        ElevatedButton(onPressed: ()=> context.go('/contact-us') , child: const Text('GO TO CONTACT US')),
        ElevatedButton(onPressed: ()=> context.go('/about-us') , child: const Text('GO TO About US')),
        ElevatedButton(onPressed: ()=> context.go('/customers') , child: const Text('GO TO Customers'))
      ],
    ));
  }
}