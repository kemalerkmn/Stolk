import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/auth/page/phone/phone_vertication_page.dart';

// class PhonePage extends StatelessWidget {
//   const PhonePage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     Country _selectedDialogCountry =
//         CountryPickerUtils.getCountryByPhoneCode('90');

//     Country _selectedFilteredDialogCountry =
//         CountryPickerUtils.getCountryByPhoneCode('90');

//     Country _selectedCupertinoCountry =
//         CountryPickerUtils.getCountryByIsoCode('tr');

//     Country _selectedFilteredCupertinoCountry =
//         CountryPickerUtils.getCountryByIsoCode('DE');
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('PhonePage'),
//         ),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: IntlPhoneField(
//                 decoration: InputDecoration(
//                   hintText: 'Phone Number',
//                   border: OutlineInputBorder(
//                       borderRadius: context.border.normalBorderRadius,
//                       borderSide: const BorderSide(
//                           width: 1, color: Color.fromRGBO(255, 0, 0, 1))),
//                   errorBorder: OutlineInputBorder(
//                       borderRadius: context.border.normalBorderRadius,
//                       borderSide: const BorderSide(
//                           width: 1, color: Color.fromRGBO(255, 0, 0, 1))),
//                 ),
//                 initialCountryCode: 'TR',
//                 onChanged: (phone) {
//                   print(phone.completeNumber);
//                 },
//               ),
//             ),
//             Card(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text('CountryPickerDropdown (SOLO)'),
//                   _buildCountryPickerDropdownSoloExpanded(context),
//                   //ListTile(title: _buildCountryPickerDropdown(longerText: true)),
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<PhonePage> {
  Country _selectedDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode('90');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ListView(
          children: <Widget>[
            Text(
              "Telefon Numaran Nedir?",
              style: context.general.textTheme.bodyLarge
                  ?.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: context.general.mediaSize.height * 0.01,
            ),
            Text(
              "Yalnızca hesabını doğrulamamız için gerekli: profilinde asla görüntülemez",
              style:
                  context.general.textTheme.bodyMedium?.copyWith(fontSize: 14),
            ),
            SizedBox(
              height: context.general.mediaSize.height * 0.02,
            ),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(237, 239, 240, 1),
                      borderRadius: context.border.lowBorderRadius),
                  child: GestureDetector(
                      onTap: _openCountryPickerDialog,
                      child: _buildDialogItem(_selectedDialogCountry)),
                ),
                SizedBox(
                  width: context.general.mediaSize.width * 0.05,
                ),
                Expanded(
                    child: SizedBox(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                    ],
                    style: TextStyle(
                      color: context.general.colorScheme.onSecondary,
                    ),
                    onChanged: (value) {
                      if (value.length == 10) {
                        // 11 haneli telefon numarası girildiğinde yönlendirme işlemi burada gerçekleştirilecek.
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SMSVerificationScreen()));
                      }
                    },
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: context.general.colorScheme.onSecondary,
                        ),
                        hintText: "Telefon numaran nedir ?",
                        fillColor: const Color.fromRGBO(237, 239, 240, 1),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: context.border.lowBorderRadius,
                            borderSide: const BorderSide(
                                width: 1,
                                color: Color.fromRGBO(80, 103, 242, 1))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: context.border.lowBorderRadius,
                            borderSide: const BorderSide(
                                width: 1,
                                color: Color.fromRGBO(53, 55, 68, 1)))),
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          const SizedBox(width: 8.0),
          Text(
            "+${country.phoneCode}",
            style: TextStyle(
                color: context.general.colorScheme.onSecondary,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8.0),
        ],
      );

  void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.pink),
          child: CountryPickerDialog(
            titlePadding: const EdgeInsets.all(8.0),
            searchCursorColor: Colors.pinkAccent,
            searchInputDecoration:
                const InputDecoration(hintText: 'Alan kodu ara...'),
            isSearchable: true,
            title: const Text('Telefon numarası alan kodu seç'),
            onValuePicked: (Country country) =>
                setState(() => _selectedDialogCountry = country),
            itemBuilder: _buildDialogItem,
            priorityList: [
              CountryPickerUtils.getCountryByIsoCode('TR'),
              CountryPickerUtils.getCountryByIsoCode('US'),
            ],
          ),
        ),
      );
}
