import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imkon_exam/core/size_config.dart';

class ContractsPage extends StatelessWidget {
  const ContractsPage({Key? key}) : super(key: key);

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
        title: const Text("Contracts"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/images/filter.svg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/images/line.svg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/images/search.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: getHeight(148),
            width: getWidth(375),
            child: CalendarAgenda(
              backgroundColor: const Color(0xFF1E1E20),
              dateColor: const Color(0xFFD1D1D1),
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 140)),
              lastDate: DateTime.now().add(Duration(days: 4)),
              onDateSelected: (date) {
                print(date);
              },
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: ((context, index) {
            return index == 0
                ? Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getWidth(16), vertical: getWidth(20)),
                    child: Row(
                      children: [
                        Container(
                          height: getWidth(33),
                          width: getWidth(92),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(getWidth(8)),
                              color: const Color(0xFF00A795)),
                          child: Center(
                            child: Text(
                              'Contracts',
                              style: TextStyle(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontSize: getWidth(15),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: getWidth(28)),
                          child: Text(
                            'Invoice',
                            style: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: getWidth(15),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getWidth(16), vertical: getWidth(10)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getWidth(10)),
                          color: const Color(0xFF2A2A2D)),
                      height: getHeight(148),
                      width: getWidth(343),
                      child: Padding(
                        padding: EdgeInsets.all(getWidth(10)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/Paper.svg"),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: getWidth(8)),
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
                                    color: const Color.fromRGBO(
                                        73, 183, 165, 0.15),
                                    borderRadius:
                                        BorderRadius.circular(getWidth(25)),
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
                            )
                          ],
                        ),
                      ),
                    ),
                  );
          }))),
        ],
      ),
      bottomNavigationBar: myBottomBar(),
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
