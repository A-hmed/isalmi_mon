import 'package:flutter/material.dart';
import 'package:isalmi_mon_c10/model/sura_details_args.dart';
import 'package:isalmi_mon_c10/ui/provider/theme_provider.dart';
import 'package:isalmi_mon_c10/ui/screens/home/home_screen.dart';
import 'package:isalmi_mon_c10/ui/screens/sura_details/sura_details.dart';
import 'package:isalmi_mon_c10/ui/utils/app_assets.dart';
import 'package:isalmi_mon_c10/ui/utils/app_colors.dart';
import 'package:isalmi_mon_c10/ui/utils/app_theme.dart';
import 'package:isalmi_mon_c10/ui/utils/build_context_extension.dart';
import 'package:isalmi_mon_c10/ui/utils/constants.dart';
import 'package:provider/provider.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  late ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of(context);
    return Column(
      children: [
        Expanded(flex: 3,child: Center(child: Image.asset(AppAssets.quranTabLogo))),
       Expanded(
         flex: 7,
         child: Stack(
           alignment: Alignment.center,
           children: [
             buildTabContent(context),
             Container(
               width: 3,
               color: AppColors.lightPrimary,
               height: double.infinity,
             )
           ],
         ),
       )

      ],
    );
  }

  Widget buildTabContent(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 3,
          color: AppColors.lightPrimary,
        ),
        const SizedBox(height: 4,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Text(context.l10n.suraName, textAlign: TextAlign.center, style: themeProvider.mediumTitleTextStyle,)),
            Expanded(child: Text(context.l10n.verses, textAlign: TextAlign.center, style: themeProvider.mediumTitleTextStyle)),
          ],
        ),
        const SizedBox(height: 4,),
        Container(
          width: double.infinity,
          height: 3,
          color: AppColors.lightPrimary,
        ),
        Expanded(flex: 7,
          child: buildListView(),),
      ],
    );
  }

  ListView buildListView() {
    return ListView.builder(
            itemCount: Constants.suraNames.length,
            itemBuilder: (context, index){
              String suraName = Constants.suraNames[index];
              return InkWell(
                onTap: (){
                  String fileName = "${index + 1}.txt";
                  Navigator.pushNamed(context, SuraDetails.routeName,
                      arguments: DetailsScreenArgs(fileName: fileName, suraName: suraName));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Text(suraName, textAlign: TextAlign.center, style: themeProvider.regularTitleTextStyle,)),
                    Expanded(child: Text("${Constants.versesNumber[index]}", textAlign: TextAlign.center, style: themeProvider.regularTitleTextStyle)),
                  ],
                ),
              );
            },
        );
  }
}
