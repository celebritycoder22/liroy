import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/icons.dart';
import 'package:liroy/src/utils/constants/images.dart';

class UpdatePersonalDetailsScreen extends StatelessWidget {
  const UpdatePersonalDetailsScreen({super.key});

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
          'Update details',
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
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: const Color.fromARGB(255, 226, 224, 224),
                  child: SvgPicture.asset(cameraIcon),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//routes
