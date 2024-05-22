import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/store/customers.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CustomerController customerController = Get.put(CustomerController());

    print(customerController.customers);

    return Scaffold(
        appBar: AppBar(
          title: Obx(
              () => Text('${customerController.customers.length} Customers')),
        ),
        body: Obx(() => customerController.isLoading.value
            ? Text("Loading")
            : ListView.builder(
                itemCount: customerController.customers.length,
                itemBuilder: (context, index) {
                  final customer = customerController.customers[index];
                  return ListTile(
                    title: Text('${customer.name}'),
                    subtitle: Text('ID: ${customer.id}'),
                  );
                },
              )));
  }
}
