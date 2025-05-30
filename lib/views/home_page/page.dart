import 'package:flutter/material.dart';
import 'package:folk_robe/locator.dart';
import 'package:folk_robe/models/page_source.dart';
import 'package:folk_robe/service/navigation_service.dart';
import 'package:folk_robe/views/core_page.dart';
import 'package:folk_robe/views/dancers_page/page.dart';
import 'package:folk_robe/views/gender_page/page.dart';
import 'package:folk_robe/common/common_main_options_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CorePage(
      hasAppBar: false,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: CommonMainOptionCard(
                    title: 'Костюми',
                    imagePath: "assets/folklore_dress.png",
                    onTap: () => locator<NavigationService>().push(
                      MaterialPageRoute(
                        builder: (context) => GenderPage(
                          pageSource: PageSource.homePage,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: CommonMainOptionCard(
                    title: 'Танцьори',
                    imagePath: "assets/folklore_dancers.png",
                    onTap: () => locator<NavigationService>().push(
                      MaterialPageRoute(
                        builder: (context) => DancersPage(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
