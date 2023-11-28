import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/widget/custom_elevated_button.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  double _currentSliderValue = 60;
  bool light = false;
  bool light2 = true;
  RangeValues _currentRangeValues = const RangeValues(18, 38);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: context.padding.normal,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Text(
                  "Konum",
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.005,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: "Bölgeler Eklenecek"),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mesafe Tercihi",
                      style: context.general.textTheme.bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text("${_currentSliderValue.toInt()} KM",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: const Color.fromRGBO(123, 135, 145, 1))),
                  ],
                ),
                Slider(
                  value: _currentSliderValue,
                  activeColor: context.general.colorScheme.secondary,
                  inactiveColor: Colors.white,
                  min: 10,
                  max: 400,
                  divisions: 400,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sadece bu aralıkta ki kişileri göster",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: const Color.fromRGBO(123, 135, 145, 1))),
                    Switch(
                      // This bool value toggles the switch.
                      value: light,
                      inactiveTrackColor: Colors.white,
                      activeColor: context.general.colorScheme.secondary,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          light = value;
                        });
                      },
                    ),
                  ],
                ),
                Text(
                  "Bana Göster",
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.005,
                ),
                Container(
                  height: 44,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: context.general.colorScheme.onBackground),
                      color: context.general.colorScheme.onSecondary,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  width: double.infinity,
                  child: const Align(
                      alignment: Alignment.centerLeft, child: Text("Kadınlar")),
                ),
                Container(
                  height: 44,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                            color: context.general.colorScheme.onBackground,
                            width: 1,
                          ),
                          top: BorderSide(
                            color: context.general.colorScheme.onBackground,
                            width: 0,
                          ),
                          right: BorderSide(
                            color: context.general.colorScheme.onBackground,
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: context.general.colorScheme.onBackground,
                            width: 1,
                          )),
                      color: context.general.colorScheme.onSecondary,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  width: double.infinity,
                  child: const Align(
                      alignment: Alignment.centerLeft, child: Text("Erkekler")),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Yaş Tercihi",
                      style: context.general.textTheme.bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                        "${_currentRangeValues.start.toInt()} - ${_currentRangeValues.end.toInt()}",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: const Color.fromRGBO(123, 135, 145, 1))),
                  ],
                ),
                RangeSlider(
                  activeColor: context.general.colorScheme.secondary,
                  inactiveColor: Colors.white,
                  values: _currentRangeValues,
                  max: 100,
                  divisions: 100,
                  min: 18,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sadece bu aralıkta ki kişileri göster",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: const Color.fromRGBO(123, 135, 145, 1))),
                    Switch(
                      // This bool value toggles the switch.
                      value: light2,
                      inactiveTrackColor: Colors.white,
                      activeColor: context.general.colorScheme.secondary,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          light2 = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SafeArea(
            child: CustomElevatedButton(
              color: context.general.colorScheme.secondary,
              title: "Bitir",
              onPressed: () => Navigator.pop(context, true),
              textColor: context.general.colorScheme.background,
            ),
          )
        ],
      ),
    ));
  }
}
