import 'package:bluemungan/feed/controller/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MonthDropdown extends StatefulWidget {
  const MonthDropdown({super.key});

  @override
  State<MonthDropdown> createState() => _MonthDropdownState();
}

class _MonthDropdownState extends State<MonthDropdown> {
  final _ctrl = Get.find<FeedController>();
  String _selectMonth = '';
  final _months = [
    '1월',
    '2월',
    '3월',
    '4월',
    '5월',
    '6월',
    '7월',
    '8월',
    '9월',
    '10월',
    '11월',
    '12월'
  ];
  @override
  void initState() {
    super.initState();
    setState(() {
      _selectMonth = _months[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 17,
        fontFamily: 'semiBold',
      ),
      dropdownColor: Colors.grey[200],
      isDense: false,
      value: _selectMonth,
      underline: Container(
        height: 2,
        color: Colors.cyan,
      ),
      items: _months
          .map((e) => DropdownMenuItem(
                value: e, // 선택 시 onChanged 를 통해 반환할 value
                child: Text(e),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          _selectMonth = value!;
          _ctrl.date = value;
        });
      },
    );
  }
}
