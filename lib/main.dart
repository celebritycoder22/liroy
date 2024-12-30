import 'package:flutter/material.dart';
import 'package:liroy/src/routes/product_detail_screen.dart';
import 'package:liroy/src/routes/seller_profile_screen.dart';
import 'package:liroy/src/routes/sellit_home.dart';
import 'package:liroy/src/routes/update_personal_details_screen.dart';
import 'package:liroy/src/routes/user_profile_screen.dart';
import 'package:liroy/src/utils/constants/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: Liroy()),
  );
}

class Liroy extends StatelessWidget {
  const Liroy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: SLTheme.lightmodeTheme,
      darkTheme: SLTheme.darkmodeTheme,
      themeMode: ThemeMode.system,
      home: SellitHome(),
      debugShowCheckedModeBanner: false,
      routes: {
        'seller_profile_screen': (context) => SellerProfileScreen(),
        'product_detail_screen': (context) => const ProductDetailScreen(),
        'user_profile_screen': (context) => const UserProfileScreen(),
        'update_profile_screen': (context) =>
            const UpdatePersonalDetailsScreen(),
      },
    );
  }
}
