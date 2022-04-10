import 'package:flutter/material.dart';
import 'package:imkon_exam/core/size_config.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_rounded)),
            title: Text('Filters',style: TextStyle(fontWeight: FontWeight.w500,fontSize: getWidth(20)),),
      ),
    );
  }
}
