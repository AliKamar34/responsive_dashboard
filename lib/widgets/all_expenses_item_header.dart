import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image,  this.backgroundColor,  this.imageColor, this.iconColor});
  final String image;
  final Color? backgroundColor,imageColor,iconColor;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: backgroundColor??  const Color(0xfffafafa),
            shape: const OvalBorder(),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(imageColor?? const Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        Transform.rotate(
          angle: 3.14159266,
          child:  Icon(Icons.arrow_back_ios_new_outlined,color: iconColor,),
        ),
      ],
    );
  }
}
