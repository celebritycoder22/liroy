import 'package:liroy/src/core/models/seller_model.dart';
import 'package:liroy/src/utils/constants/images.dart';

class Product {
  String? id;
  String? name;
  String? description;
  String? category;
  double? price;
  String? picture;
  Map<String, dynamic>? seller;

  Product({
    this.id,
    this.name,
    this.description,
    this.picture,
    this.category,
    this.price,
    required this.seller,
  });

  static final demoProducts = <Product>[
    Product(
      id: 'slv1',
      name: 'ASHLUXE hatched sleeve - Black',
      price: 5400000,
      description: 'A black long sleep with hatched design',
      picture: longsleeve,
      seller: {
        'username': 'asluxury',
        'name': 'Ashluxe',
        'picture': ashluxe,
      },
    ),
    Product(
      id: 'gr',
      name: 'Grey shirt',
      price: 150000,
      description: 'A black long sleep with hatched design',
      picture: greyShirt,
      seller: {
        'username': 'asluxury',
        'name': 'Ashluxe',
        'picture': ashluxe,
      },
    ),
    Product(
      id: 'idx',
      name: 'ASHLUXE Bomber Jacket - Green',
      price: 20000,
      description:
          'A soft blend of rich wool with hints of leather, sits atop this luxury bomber jacket made with expert tailoring. From the ribbed cuffs to the signature lightning bolt zipper, this stylish coat is bound to be an instant classic.',
      picture: greenHoodie,
      seller: {'username': 'asluxury', 'name': 'Ashluxe', 'picture': ashluxe},
    ),
  ];
}
