import 'package:flutter/material.dart';
import 'package:folk_robe/constants.dart';
import 'package:folk_robe/models/costume.dart';
import 'package:folk_robe/ui/widgets/costume_item.dart';

class CostumeListPage extends StatefulWidget {
  const CostumeListPage({super.key});

  @override
  State<CostumeListPage> createState() => _CostumeListPageState();
}

class _CostumeListPageState extends State<CostumeListPage> {
  List<Costume> costumeList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constants.circularRadius),
        ),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: costumeList.isEmpty
          ? const Padding(
              padding: EdgeInsets.all(Constants.globalPadding),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Имате празен инвентар от риквизити, моля добавте като натискате:',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 15),
                    Icon(
                      Icons.add,
                      color: Colors.white54,
                      size: 32,
                    ),
                  ],
                ),
              ),
            )
          : ListView.separated(
              itemCount: costumeList.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                return CostumeItem(
                    title: costumeList[index].title, onTap: null);
              },
            ),
    );
  }
}
