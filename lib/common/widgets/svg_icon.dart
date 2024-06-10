import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/**
 * @author Nguyen Trung Anh
 * @created 10/06/2024
 */

class SvgIcon extends StatelessWidget {
  final String assetsPath;
  const SvgIcon({super.key, required this.assetsPath});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetsPath);
  }
}
