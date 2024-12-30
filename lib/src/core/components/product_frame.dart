import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liroy/src/core/models/product_model.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/images.dart';

class ProductFrame extends StatelessWidget {
  const ProductFrame({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    //formatted price with naira symbol
    final formattedPrice = NumberFormat.currency(
      locale: 'en_NG',
      symbol: '₦',
      decimalDigits: 0,
    ).format(product.price);
    //
    return Container(
      height: 320,
      width: 200,
      padding: const EdgeInsets.all(10), // Consistent padding
      decoration: BoxDecoration(color: isDark ? contGrey : white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Image rounded corners
              child: Image.asset(
                product.picture ?? orangeShirt,
                fit: BoxFit.cover, // Ensures the image fits well
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(product.seller!['picture'] ?? dp),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Seller',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: const Color.fromARGB(255, 139, 135, 135),
                              fontSize: 10,
                            ),
                      ),
                      Text(
                        '@${product.seller!['username']}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                        overflow:
                            TextOverflow.ellipsis, // Prevents text overflow
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Price',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: const Color.fromARGB(255, 139, 135, 135),
                          fontSize: 10,
                        ),
                  ),
                  Text(
                    formattedPrice,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 33,
                  decoration: BoxDecoration(color: isDark ? bdGrey : black),
                  child: Text(
                    'Purchase',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? white
                            : white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
