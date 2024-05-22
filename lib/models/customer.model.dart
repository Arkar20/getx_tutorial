class Customer {
  int? id;
  String? name;
  String? phnum1;
  String? phnum2;
  String? company;
  String? address;
  bool? retailCustomer;
  int? marketplaceId;
  Marketplace? marketplace;

  Customer(
      {this.id,
      this.name,
      this.phnum1,
      this.phnum2,
      this.company,
      this.address,
      this.retailCustomer,
      this.marketplaceId,
      this.marketplace});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phnum1 = json['phnum1'];
    phnum2 = json['phnum2'];
    company = json['company'];
    address = json['address'];
    retailCustomer = json['retail_customer'];
    marketplaceId = json['marketplace_id'];
    marketplace = json['marketplace'] != null
        ? new Marketplace.fromJson(json['marketplace'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phnum1'] = this.phnum1;
    data['phnum2'] = this.phnum2;
    data['company'] = this.company;
    data['address'] = this.address;
    data['retail_customer'] = this.retailCustomer;
    data['marketplace_id'] = this.marketplaceId;
    if (this.marketplace != null) {
      data['marketplace'] = this.marketplace!.toJson();
    }
    return data;
  }
}

class Marketplace {
  int? id;
  String? name;

  Marketplace({this.id, this.name});

  Marketplace.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}