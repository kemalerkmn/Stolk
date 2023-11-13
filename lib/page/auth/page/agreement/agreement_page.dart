import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/auth/page/phone/phone_page.dart';
import 'package:stolk_/widget/custom_elevated_button.dart';

class AgreementPage extends StatelessWidget {
  const AgreementPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String emptyText =
        """Sevgili ziyaretçimiz, lütfen https://site.com web sitemizi ziyaret etmeden önce işbu kullanım koşulları sözleşmesini dikkatlice okuyunuz. Siteye erişiminiz tamamen bu sözleşmeyi kabulünüze ve bu sözleşme ile belirlenen şartlara uymanıza bağlıdır. Şayet bu sözleşmede yazan herhangi bir koşulu kabul etmiyorsanız, lütfen siteye erişiminizi sonlandırınız. Siteye erişiminizi sürdürdüğünüz takdirde, koşulsuz ve kısıtlamasız olarak, işbu sözleşme metninin tamamını kabul ettiğinizin, tarafımızca varsayılacağını lütfen unutmayınız.\n\n\nhttps://site.com web sitesi Şirket Adı tarafından yönetilmekte olup, bundan sonra SİTE olarak anılacaktır. İşbu siteye ilişkin Kullanım Koşulları, yayınlanmakla yürürlüğe girer. Değişiklik yapma hakkı, tek taraflı olarak SİTE'ye aittir ve SİTE üzerinden güncel olarak paylaşılacak olan bu değişiklikleri, tüm kullanıcılarımız baştan kabul etmiş sayılır.""";
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset("assets/icons/auth_icons/close.svg"))
          ],
        ),
        body: Padding(
          padding: context.padding.normal,
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                Text(
                  "Genel Kullanım Koşulları",
                  style: context.general.textTheme.bodyLarge
                      ?.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.02,
                ),
                Text(
                  emptyText,
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(fontSize: 14),
                ),
                const Spacer(),
                CustomElevatedButton(
                    textColor: context.general.colorScheme.onSecondary,
                    onPressed: () =>
                        context.route.navigateToPage(const PhonePage()),
                    color: const Color.fromRGBO(237, 239, 240, 1),
                    title: "Koşulları Kabul Ediyorum")
              ],
            ),
          ),
        ));
  }
}
