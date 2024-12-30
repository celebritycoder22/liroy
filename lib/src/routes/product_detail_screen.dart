import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liroy/src/core/components/popper.dart';
import 'package:liroy/src/core/models/product_model.dart';
import 'package:liroy/src/core/providers/providers.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/icons.dart';
import 'package:liroy/src/utils/constants/images.dart';

class ProductDetailScreen extends ConsumerWidget {
  const ProductDetailScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //product provider
    Product? product = ref.watch(productProvider);

    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Popper(),
                  //the image of the product
                  Center(
                    child: Container(
                      height: 280,
                      // width: 300,
                      margin: const EdgeInsets.only(top: 30, bottom: 10),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(product!.picture!),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Text(
                      product.name!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage(product.seller!['picture'] ?? dp),
                      ),
                      const SizedBox(width: 7),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seller',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color.fromARGB(
                                        255, 139, 135, 135),
                                    fontSize: 12,
                                  ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '@${product.seller!['username']}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(verifiedIcon)
                              ],
                            ),
                          ],
                        ),
                      ),
                      //follow seller button
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Follow'),
                      )
                    ],
                  ),

                  //the description of the product
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0, bottom: 200),
                    child: Text(
                      textAlign: TextAlign.justify,
                      product.description!,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: lGrey, fontSize: 13),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 90.0),
                  child: FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(isDark ? bdGrey : black),
                      minimumSize:
                          WidgetStatePropertyAll(Size(double.infinity, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)))),
                    ),
                    child: Text(
                      'Add to cart',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: isDark ? white : white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.6),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: WidgetStatePropertyAll(BorderSide(
                          color: isDark ? white : black, width: 0.5)),
                      backgroundColor: WidgetStatePropertyAll(transparent),
                      minimumSize:
                          WidgetStatePropertyAll(Size(double.infinity, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)))),
                    ),
                    child: Text(
                      'Wishlist',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: isDark ? white : black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.3),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
