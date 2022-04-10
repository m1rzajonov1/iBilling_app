import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imkon_exam/core/size_config.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          title: TextFormField(
            style: const TextStyle(color: Color(0xFFFFFFFF)),
            decoration: const InputDecoration(
                hintText: 'Search by keywords',
                hintStyle: TextStyle(color: Color(0xFFFFFFFF))),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Text("X"),
            )
          ]),
      body: Center(
          child: SizedBox(
        height: getHeight(73.33),
        width: getWidth(66),
        child: SvgPicture.asset('assets/images/Document.svg'),
      )),
    );
  }
}
