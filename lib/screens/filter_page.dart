import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        title: Text(
          'Filters',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: getWidth(20)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(16), vertical: getWidth(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Status",
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: Color(0xFF999999)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xFFF2F2F2),
                        checkColor: Colors.black,
                        value: true,
                        onChanged: (v) {},
                      ),
                      const Text(
                        "Paid",
                        style: TextStyle(color: Color(0xFFF2F2F2)),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xFFF2F2F2),
                        checkColor: Colors.black,
                        side: const BorderSide(color: Colors.white),
                        value: false,
                        onChanged: (v) {},
                      ),
                      const Text(
                        "Rejected by IQ",
                        style: TextStyle(color: Color(0xFFF2F2F2)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xFFF2F2F2),
                        checkColor: Colors.black,
                        side: const BorderSide(color: Colors.white),
                        value: false,
                        onChanged: (v) {},
                      ),
                      const Text(
                        "In process",
                        style: TextStyle(color: Color(0xFFF2F2F2)),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xFFF2F2F2),
                        checkColor: Colors.black,
                        side: const BorderSide(color: Colors.white),
                        value: false,
                        onChanged: (v) {},
                      ),
                      const Text(
                        "Rejected by Payme",
                        style: TextStyle(color: Color(0xFFF2F2F2)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: getWidth(10)),
              child: const Text(
                "Date",
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: Color(0xFF999999)),
              ),
            ),
            Row(
              children: [
                Container(
                  height: getHeight(37),
                  width: getWidth(116),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2A2A2D),
                      borderRadius: BorderRadius.circular(getWidth(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "16.02.2021",
                        style: TextStyle(color: Color(0xFF999999)),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/Calendar.svg'),
                        splashColor: Colors.transparent,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(10)),
                  child: Text(
                    "-",
                    style: TextStyle(
                        fontSize: getWidth(25), color: const Color(0xFFD1D1D1)),
                  ),
                ),
                Container(
                  height: getHeight(37),
                  width: getWidth(116),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2A2A2D),
                      borderRadius: BorderRadius.circular(getWidth(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: getWidth(5)),
                        child: const Text(
                          "To",
                          style: TextStyle(color: Color(0xFF999999)),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/Calendar.svg'),
                        splashColor: Colors.transparent,
                      )
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  height: getHeight(40),
                  width: getWidth(164),
                  decoration: BoxDecoration(
                      color: const Color(0xFF008F7F),
                      borderRadius: BorderRadius.circular(getWidth(15))),
                  child: const Center(
                    child: Text("Cancel"),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:getWidth(7)),
                  child: Container(
                    height: getHeight(40),
                    width: getWidth(164),
                    decoration: BoxDecoration(
                        color: const Color(0xFF008F7F),
                        borderRadius: BorderRadius.circular(getWidth(15))),
                    child: const Center(
                      child: Text("Apply ilters"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
