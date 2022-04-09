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
          SingleChildScrollView(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal:getWidth(16)),
            height: getHeight(459),
            width: getWidth(343),
            color: Colors.orange,
          ))
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
