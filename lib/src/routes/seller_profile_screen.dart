import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liroy/src/core/components/popper.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/icons.dart';
import 'package:liroy/src/utils/constants/images.dart';

// ignore: must_be_immutable
class SellerProfileScreen extends StatefulWidget {
  SellerProfileScreen({
    super.key,
  });

  @override
  _SellerProfileState createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfileScreen>
    with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller =
        TabController(length: 2, vsync: this); // Initialize TabController
  }

  @override
  void dispose() {
    controller.dispose(); // Dispose TabController to avoid memory leaks
    super.dispose();
  }

  bool isFollowing = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Popper(),

              // Seller profile section remains unchanged
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 56,
                      backgroundImage: AssetImage(ashluxe),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 19.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Ashluxe',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              SvgPicture.asset(verifiedIcon,
                                  height: 14, width: 14)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: Text(
                              '@' + 'ashluxe',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: dGrey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  personIcon,
                                  height: 13,
                                  width: 13,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 1.0),
                                  child: Text(
                                    '2M',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(fontSize: 13),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                  locationIcon,
                                  height: 13,
                                  width: 13,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 1.0),
                                  child: Text(
                                    'Africa',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Clothing brand',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: lGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
              const SizedBox(
                height: 6,
              ),
              Text('Luxurious street wears',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.normal, fontSize: 15)),

              // Buttons remain unchanged
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Row(
                  children: [
                    FilledButton(
                        onPressed: () {
                          setState(() {
                            isFollowing = !isFollowing;
                          });
                        },
                        child: Text(
                          isFollowing ? 'following' : 'follow',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: isDark ? black : white),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(bGrey)),
                      child: Text(
                        'Message',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: isDark ? black : black),
                      ),
                    ),
                  ],
                ),
              ),

              DefaultTabController(
                initialIndex: 0,
                length: 2,
                child: TabBar(
                  tabAlignment: TabAlignment.start,
                  controller: controller,
                  isScrollable: true,
                  tabs: const [
                    Tab(
                      text: 'Product',
                    ),
                    Tab(
                      text: 'Collection',
                    ),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  controller: controller,
                  children: const [
                    Center(child: Text('Products Content')),
                    Center(child: Text('Collections Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
