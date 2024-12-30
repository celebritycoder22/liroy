import 'dart:ui';

import 'package:liroy/src/core/models/payment_details.dart';
import 'package:liroy/src/core/models/product_model.dart';
import 'package:liroy/src/utils/constants/images.dart';

class Seller {
  String? name;
  String? username;
  String? picture;
  PaymentDetails? paymentDetails;
  bool? isVerified = false;
  List<Product>? products;

  Seller({
    this.name,
    this.username,
    this.picture,
    this.paymentDetails,
    this.isVerified,
  }) : products = Product.demoProducts
            .where((product) => product.seller!['username'] == username)
            .toList();

  static final demoSellers = <Seller>[
    Seller(
      name: 'Klyde',
      username: 'klydestores',
      picture: klyde,
      isVerified: true,
      paymentDetails: PaymentDetails(
        bank: 'Wema Bank',
        accountNumber: 0247801187,
      ),
    ),
    Seller(
      name: 'Ovie',
      username: 'oviethestunner',
      picture: ovie,
      isVerified: true,
      paymentDetails: PaymentDetails(
        bank: 'Wema Bank',
        accountNumber: 0247801187,
      ),
    ),
    Seller(
      name: 'Lorry',
      username: 'lorrystores',
      picture: lorry,
      isVerified: true,
      paymentDetails: PaymentDetails(
        bank: 'Wema Bank',
        accountNumber: 0247801187,
      ),
    ),
    Seller(
      name: 'Ashluxe',
      username: 'ashluxury',
      picture: ashluxe,
      isVerified: true,
      paymentDetails: PaymentDetails(
        bank: 'Wema Bank',
        accountNumber: 0247801187,
      ),
    )
  ];
}
