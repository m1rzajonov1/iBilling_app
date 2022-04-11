import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imkon_exam/core/size_config.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(12),
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset('assets/images/Ellipse 13.png'),
        ),
        title: const Text("History"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: SvgPicture.asset('assets/images/filter.svg'),
              onPressed: () {
                Navigator.pushNamed(context, '/filter');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/images/line.svg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: SvgPicture.asset('assets/images/search.svg'),
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(16), vertical: getWidth(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: getWidth(10)),
              child: const Text(
                "Date",
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: Color(0xFF999999)),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return index == 0
                      ? Row(
                          children: [
                            Container(
                              height: getHeight(37),
                              width: getWidth(116),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF2A2A2D),
                                  borderRadius:
                                      BorderRadius.circular(getWidth(10))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "16.02.2021",
                                    style: TextStyle(color: Color(0xFF999999)),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                        'assets/images/Calendar.svg'),
                                    splashColor: Colors.transparent,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getWidth(10)),
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: getWidth(25),
                                    color: const Color(0xFFD1D1D1)),
                              ),
                            ),
                            Container(
                              height: getHeight(37),
                              width: getWidth(116),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF2A2A2D),
                                  borderRadius:
                                      BorderRadius.circular(getWidth(10))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: getWidth(5)),
                                    child: const Text(
                                      "To",
                                      style:
                                          TextStyle(color: Color(0xFF999999)),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                        'assets/images/Calendar.svg'),
                                    splashColor: Colors.transparent,
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(vertical: getWidth(10)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(getWidth(10)),
                                color: const Color(0xFF2A2A2D)),
                            height: getHeight(148),
                            width: getWidth(343),
                            child: Padding(
                              padding: EdgeInsets.all(getWidth(10)),
                              child: Column(
                                children: [
                                  containerBuilderTitle(),
                                  containerBuildertext(
                                      "Fish:", "Yoldosheva Ziyoda"),
                                  containerBuildertext(
                                      "Amount:", "1,200,000 UZS"),
                                  containerBuildertext(
                                      "Last invoice:", "№ 156"),
                                  containerBuilderLastText(
                                      "Number of invoices:", "6", "31.01.2021"),
                                ],
                              ),
                            ),
                          ),
                        );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row containerBuildertext(String s, String d) {
    return Row(
      children: [
        Text(
          s,
          style: const TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w500,
              color: Color(0xFFE7E7E7)),
        ),
        Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            d,
            style: const TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w400,
                color: Color(0xFF999999)),
          ),
        ),
      ],
    );
  }

  Row containerBuilderLastText(String s, String d, String date) {
    return Row(
      children: [
        Text(
          s,
          style: const TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w500,
              color: Color(0xFFE7E7E7)),
        ),
        Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            d,
            style: const TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w400,
                color: Color(0xFF999999)),
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            date,
            style: const TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w400,
                color: Color(0xFF999999)),
          ),
        )
      ],
    );
  }

  Row containerBuilderTitle() {
    return Row(
      children: [
        SvgPicture.asset("assets/images/Paper.svg"),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(8)),
          child: const Text(
            "№ 154",
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w700,
                color: Color(0xFFE7E7E7)),
          ),
        ),
        const Spacer(),
        Container(
          height: getHeight(21),
          width: getWidth(49),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(73, 183, 165, 0.15),
            borderRadius: BorderRadius.circular(getWidth(25)),
          ),
          child: const Center(
            child: Text(
              "Paid",
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF49B7A5)),
            ),
          ),
        )
      ],
    );
  }

  BottomNavigationBar myBottomBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF000000),
      items: [
        BottomNavigationBarItem(
          backgroundColor: const Color(0xFF000000),
          label: '',
          icon: SvgPicture.asset('assets/images/contracts_activ.svg'),
        ),
        BottomNavigationBarItem(
          label: 'History',
          icon: SvgPicture.asset('assets/images/history_activ.svg'),
        ),
        BottomNavigationBarItem(
          label: 'New',
          icon: SvgPicture.asset('assets/images/new_activ.svg'),
        ),
        BottomNavigationBarItem(
          label: 'Saved',
          icon: SvgPicture.asset('assets/images/saved_activ.svg'),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: SvgPicture.asset('assets/images/profile_activ.svg'),
        )
      ],
    );
  }
}
