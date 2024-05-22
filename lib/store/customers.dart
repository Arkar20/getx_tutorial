import 'dart:convert';

import "package:get/get.dart";
import 'package:getx_tutorial/models/customer.model.dart';
import 'package:http/http.dart' as http;

class CustomerController extends GetxController {
  var isLoading = false.obs;
  var customers = <Customer>[].obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetch();
  }

  fetch() async {
    try {
      print('call');
      isLoading(true);
      var url = Uri.parse('http://localhost:3000/customers');

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var results = jsonDecode(response.body);
        var _customers = <Customer>[];

        for (var result in results) {
          var customer = Customer.fromJson(result);

          _customers.add(customer);
        }

        customers.value = _customers;
      } else {
        print('someting went wrong!');
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
