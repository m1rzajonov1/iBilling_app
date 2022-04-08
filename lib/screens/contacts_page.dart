import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContractsPage extends StatelessWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          label: 'Contracts',
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
      ]),
    );
  }
}
