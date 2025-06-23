import 'package:flutter/material.dart';
import 'package:trading/data/script_model.dart';
import 'package:trading/presentation/widget/script_component.dart';
import 'package:trading/presentation/widget/search_bar.dart';
import 'package:trading/utils/mock_data.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    List mock_data = data;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            SizedBox(width: size.width * 0.9, child: SearchAndAddScriptsBar()),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  ScriptModel scriptModel = ScriptModel.fromjson(
                    mock_data[index],
                  );
                  return ScriptComponent(
                    cpm: scriptModel.cpm.toString(),
                    exchange: scriptModel.exchange,
                    fireSpreadValue: scriptModel.fireSpreadValue,
                    performance: scriptModel.performance,
                    secondSpreadValue: scriptModel.secondSpreadValue,
                    title: scriptModel.title,
                    isUp: scriptModel.isUp,
                  );
                },
                itemCount: mock_data.length,
                separatorBuilder: (context, index) => Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
