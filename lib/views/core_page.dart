import 'package:flutter/material.dart';
import 'package:folk_robe/constants.dart';

class CorePage extends StatelessWidget {
  final Widget child;
  final bool? hasAppBar;
  final bool? hasBackButton;
  final String? appBarTitle;
  final bool? hasAppBarTitle;
  final bool? hasFAB;
  final Widget? floatingActionButton;

  const CorePage({
    super.key,
    required this.child,
    this.appBarTitle,
    this.hasAppBar = false,
    this.hasBackButton = false,
    this.hasAppBarTitle = false,
    this.hasFAB = false,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: hasFAB ?? false
          ? floatingActionButton
          : null,
      appBar:
          hasAppBar ?? false
              ? AppBar(
                automaticallyImplyLeading: false,
                leading: hasBackButton ?? false
                  ? IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ) : null,
                backgroundColor: Colors.blueGrey,
                title: hasAppBarTitle ?? false
                  ? Text(
                    appBarTitle ?? "",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: Constants.fontSizeTitleAppBar,
                      color: Colors.white,
                    ),
                  ) : null,
              ) : null,
        backgroundColor: Colors.blueGrey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: child,
        ),
    );
  }
}