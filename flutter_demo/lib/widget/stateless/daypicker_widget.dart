import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class DayPickerWidget extends StatefulWidget {
  const DayPickerWidget({Key? key}) : super(key: key);

  @override
  State<DayPickerWidget> createState() => _DayPickerWidgetState();
}

class _DayPickerWidgetState extends State<DayPickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DayPicker'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "日期选择器",
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  "日期选择器，可指定当前日期，选中日期，展示月份等，接收日期选中事件",
                  style: descStyle,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _buildShowDatePicker();
                },
                child: const Text(
                  '选择日期',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildShowDatePicker() {
    showDatePicker(
        locale: const Locale('zh'),
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022, 1),
        lastDate: DateTime(2023, 12),
        initialEntryMode: DatePickerEntryMode.calendar,
        textDirection: TextDirection.ltr,
        currentDate: DateTime.now(),
        helpText: '日历',
        cancelText: "取消",
        confirmText: '确认',
        errorFormatText: "errorFormatText",
        errorInvalidText: 'errorInvalidText',
        fieldLabelText: "fieldLabelText",
        fieldHintText: "fieldHintText",
        initialDatePickerMode: DatePickerMode.day,
        useRootNavigator: true,
        selectableDayPredicate: (dayTime) {
          if (dayTime == DateTime(2022, 7, 15) ||
              dayTime == DateTime(2022, 7, 15) ||
              dayTime == DateTime(2022, 7, 15)) {
            return false;
          }
          return true;
        });
  }
}
