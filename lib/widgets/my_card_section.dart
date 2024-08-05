import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newrespoapp/utils/app_styles.dart';
import 'package:newrespoapp/widgets/dots_indcator_group.dart';
import 'package:newrespoapp/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotsIndicatorGroup(
          currentPageIndex: currentPage,
        ),
      ],
    );
  }
}
