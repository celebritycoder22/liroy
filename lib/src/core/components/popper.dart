import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liroy/src/utils/constants/colors.dart';
import 'package:liroy/src/utils/constants/icons.dart';

class Popper extends StatelessWidget {
  const Popper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 40),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: fGrey,
          child: SvgPicture.asset(arrowBackIcon, height: 23, width: 23),
        ),
      ),
    );
  }
}
