import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liroy/src/core/components/product_frame.dart';
import 'package:liroy/src/core/components/seller_frame.dart';
import 'package:liroy/src/core/models/product_model.dart';
import 'package:liroy/src/core/models/seller_model.dart';
import 'package:liroy/src/core/providers/providers.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/icons.dart';
import 'package:liroy/src/utils/constants/images.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 28.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(dp),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hey Klyde',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            'Start shopping!',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: dGrey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: bGrey)),
                      child: SvgPicture.asset(notifIcon),
                    )
                  ],
                ),
              ),

              //search product text field
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          left: 13.0, top: 10, bottom: 10),
                      child: SvgPicture.asset(
                        searchIcon,
                        colorFilter:
                            const ColorFilter.mode(iGrey, BlendMode.srcIn),
                      ),
                    ),
                    hintText: 'Search product and sellers',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: iGrey),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: bGrey),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: teal),
                    ),
                  ),
                ),
              ),

              //recommended products
              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 15, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'See all >',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: dGrey, fontSize: 14),
                    ),
                  ],
                ),
              ),

              //product frame
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(left: 15),
                    itemCount: Product.demoProducts.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final product = Product.demoProducts[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            ref.watch(productProvider.notifier).state = product;
                            Navigator.pushNamed(
                                context, 'product_detail_screen');
                          },
                          child: ProductFrame(product: product),
                        ),
                      );
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0, left: 15, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top sellers',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'See all >',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: dGrey, fontSize: 14),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(left: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: Seller.demoSellers.length,
                  itemBuilder: (context, index) {
                    final seller = Seller.demoSellers[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, 'seller_profile_screen'),
                        child: SellerFrame(seller: seller),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
