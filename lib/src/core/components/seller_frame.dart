//seller frame
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liroy/src/core/models/seller_model.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/icons.dart';
import 'package:liroy/src/utils/constants/images.dart';

class SellerFrame extends StatefulWidget {
  const SellerFrame({super.key, required this.seller});
  final Seller seller;

  @override
  State<SellerFrame> createState() => _SellerFrameState();
}

class _SellerFrameState extends State<SellerFrame> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      child: Container(
        height: 200,
        width: 140,
        decoration: BoxDecoration(
          color: isDark ? const Color.fromARGB(255, 14, 13, 13) : white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 18),
            CircleAvatar(
              radius: 33,
              backgroundImage: AssetImage(widget.seller.picture ?? dp),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.seller.name ?? 'seller',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 2),
                if (widget.seller.isVerified ?? false)
                  SvgPicture.asset(verifiedIcon, height: 12, width: 12),
              ],
            ),
            Text(
              '@${widget.seller.username}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: const Color.fromARGB(255, 139, 135, 135),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isFollowing = !isFollowing;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: teal,
                      content: Text(isFollowing
                          ? 'Now following ${widget.seller.username}'
                          : 'Unfollowed ${widget.seller.username}'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 26,
                  width: 120,
                  margin: const EdgeInsets.only(top: 35),
                  decoration: BoxDecoration(
                      color: isFollowing
                          ? (isDark
                              ? const Color.fromARGB(255, 14, 13, 13)
                              : white)
                          : black,
                      border: Border.all(
                        color: isFollowing
                            ? (isDark ? white : black)
                            : transparent,
                        width: 0.2,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    isFollowing ? 'Following' : 'Follow',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: isFollowing ? (isDark ? white : black) : white,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
