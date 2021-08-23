import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:searchfield/searchfield.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'dart:convert';
import '../common/alert.dart';

class Alarm{
  final _timeJson = '''[
      [
        "AM",
        "PM"
      ],
      [
        0,1,2,3,4,5,6,7,8,9,10,11
      ],
      [
        0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30
      ]     
  ]''';
  final _weekJson = '''[
    ["월", "화", "수", "목", "금"],
    ["평일", "주말"]
  ]''';

  showAlarmTimePicker(BuildContext context) {
    new Picker(
        adapter: PickerDataAdapter<String>(
            pickerdata: new JsonDecoder().convert(_timeJson), isArray: true
        ),
        hideHeader: true,
        title: Text('알람 시간 설정',textAlign: TextAlign.center,),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        }
    ).showDialog(context);
  }

  showAlarmCyclePicker(BuildContext context) {
    new Picker(
        adapter: PickerDataAdapter<String>(
            pickerdata: new JsonDecoder().convert(_weekJson), isArray: true
        ),
        hideHeader: true,
        title: Text('알람 주기 설정',textAlign: TextAlign.center,),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        }
    ).showDialog(context);
  }

  Widget _setUpAlarmSettingContainer(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height -
          AppBar().preferredSize.height -
          MediaQuery.of(context).padding.top) * 0.3,
      width: MediaQuery.of(context).size.width * 0.4,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            bool _active = false;
            setActive(bool value) => _active = value;
            return Card(
              // child: InkWell(
                child: ListTile(
                  leading: Icon(Icons.alarm, color: _active ? Colors.lightBlueAccent : Colors.grey,),
                  title: Text('Test Period'),
                  subtitle: Text('words about fashion'),
                  trailing: FlutterSwitch(
                    //showOnOff: true,
                    activeColor: Colors.lightBlueAccent,
                    inactiveColor: Colors.grey,
                    value: _active,
                    onToggle: (value) => setActive(value),
                  ),
                ),
              //)
            );
          }
      ),
    );
  }

  manageAlarmSettings(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              scrollable: true,
              title: Text('단어장 알림 설정', textAlign: TextAlign.center,),
              titlePadding: EdgeInsets.only(top: 25.0),
              content: Container(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              bool _active = false;
                              setActive(bool value) => _active = value;
                              return Card(
                                // child: InkWell(
                                child: ListTile(
                                  leading: Icon(Icons.alarm, color: _active ? Colors.lightBlueAccent : Colors.grey,),
                                  title: Text('Test Period'),
                                  subtitle: Text('words about fashion'),
                                  trailing: FlutterSwitch(
                                    //showOnOff: true,
                                    activeColor: Colors.lightBlueAccent,
                                    inactiveColor: Colors.grey,
                                    value: _active,
                                    onToggle: (value) => setActive(value),
                                  ),
                                ),
                                //)
                              );
                            }
                        ),
                    )
                  ],
                ),
              )
          );
        }
    );
  }

  setVocabularyAlarm(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            scrollable: true,
            title: Text('단어장 알림 추가', textAlign: TextAlign.center,),
            titlePadding: EdgeInsets.only(top: 25.0),
            content: Column(
              mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.title_rounded, color: Colors.lightBlue),
                      labelText: '제목',
                      hintText: '알람 제목을 작성하세요',
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  SearchField(
                    suggestions: [
                      'United States',
                      'America',
                      'Washington',
                      'India',
                      'Paris',
                      'Jakarta',
                      'Australia',
                      'Lorem Ipsum'
                    ],
                    hint: '단어장 제목을 검색하세요',
                  ),
                  SizedBox(height: 12.0,),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.alarm_on, color: Colors.lightBlue,),
                      title: Text('시간 설정', style: TextStyle(color: Colors.black54,)),
                      onTap: () => alarm.showAlarmTimePicker(context),
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.calendar_today_outlined, color: Colors.lightBlue,),
                      title: Text('주기 설정', style: TextStyle(color: Colors.black54,)),
                      onTap: () => alarm.showAlarmCyclePicker(context),
                    ),
                  ),
                ]
            ),
            actions: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      height: 25.0,
                      child: DialogButton(
                        width: MediaQuery.of(context).size.width * 0.25,
                        color: Colors.lightBlue,
                        child: Text('OK', style: TextStyle(color: Colors.white, fontSize: 16)),
                        onPressed: () => alert.onSuccess(context, "알림이 등록되었습니다."),
                      ),
                    ),
                    ButtonTheme(
                        height: 25.0,
                        child: DialogButton(
                          width: MediaQuery.of(context).size.width * 0.25,
                          color: Colors.lightBlue,
                          child: Text('CANCEL', style: TextStyle(color: Colors.white, fontSize: 16)),
                          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 6.0,),
            ],
          );
        }
    );
  }




}

Alarm alarm = new Alarm();