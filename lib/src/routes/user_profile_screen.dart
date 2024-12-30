import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liroy/src/core/components/popper.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/icons.dart';
import 'package:liroy/src/utils/constants/images.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  get child => null;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 10,
            backgroundColor:
                isDark ? const Color.fromARGB(66, 245, 245, 245) : fGrey,
            child: SvgPicture.asset(
              arrowBackIcon,
              colorFilter:
                  ColorFilter.mode(isDark ? fGrey : black, BlendMode.srcIn),
            ),
          ),
        ),
        title: Text(
          'Your profile',
          style:
              GoogleFonts.poppins(fontSize: 17, color: isDark ? white : black),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: isDark ? ffGrey : lGrey, width: 0.3))),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(klyde),
                ),
              ),
            ),
            Container(
              height: 250,
              margin: const EdgeInsets.only(left: 15, right: 15, top: 40),
              padding: const EdgeInsets.only(top: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDark ? contGrey : white,
                borderRadius: const BorderRadius.all(Radius.circular(18)),
              ),
              child: Column(
                children: [
                  Material(
                    color: Colors.transparent, // Ensures no background color
                    child: InkWell(
                      splashColor: Colors.transparent, // Removes splash effect
                      highlightColor:
                          Colors.transparent, // Removes highlight effect
                      onTap: () {
                        // Handle tap
                      },
                      child: ListTile(
                        onTap: () => Navigator.pushNamed(
                            context, 'update_profile_screen'),
                        leading: CircleAvatar(
                          backgroundColor: fGrey,
                          child: SvgPicture.asset(
                            personOutlinedIcon,
                            height: 14,
                            width: 14,
                          ),
                        ),
                        title: Text(
                          'Personal details',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.normal),
                        ),
                        trailing: SvgPicture.asset(arrowForwardIcon,
                            height: 13, width: 13),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Divider(
                      color: isDark
                          ? ffGrey
                          : const Color.fromARGB(255, 197, 195, 195),
                      thickness: 0.3,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//routes
