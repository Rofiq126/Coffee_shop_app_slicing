import 'package:barbershop_app/common/style/style.dart';
import 'package:barbershop_app/common/widget/custom_appBar.dart';
import 'package:barbershop_app/common/widget/custom_button.dart';
import 'package:barbershop_app/view/home_screen/component/benner.dart';
import 'package:barbershop_app/view/home_screen/component/carousel_service.dart';
import 'package:barbershop_app/view/home_screen/component/data.dart';
import 'package:barbershop_app/view/home_screen/component/search_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imageUrl =
      'https://i.pinimg.com/564x/a8/1c/bc/a81cbc5336da739031477baad3959b91.jpg';
  TextEditingController search = TextEditingController();
  DatabaseAsset databaseAsset = DatabaseAsset();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Styles.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomAppBar(
                widget: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: Colors.black),
                        image: DecorationImage(
                            image: NetworkImage(
                              imageUrl,
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.32,
                decoration: const BoxDecoration(color: Styles.background),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome, Jhon',
                        style: Styles.txtGeneralTitleBlack,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SearchField(search: search),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Your Last Visit',
                        style: Styles.txtGeneralTitleBlack,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BannerHomeScreen()
                    ],
                  ),
                ),
              ),
              Container(
                  width: size.width,
                  height: size.height * 0.28,
                  decoration: const BoxDecoration(color: Styles.brown),
                  child: CarouselService()),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Availible Barbers',
                      style: Styles.txtGeneralTitleWhite,
                    ),
                    ListView.builder(
                        itemCount: 3,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Styles.brown,
                                      borderRadius: BorderRadius.circular(100),
                                      image: const DecorationImage(
                                          image: NetworkImage(''))),
                                ),
                                title: const Text(
                                  'Jeremy Steven',
                                  style: Styles.txtGeneralWhite,
                                ),
                                subtitle: const Row(
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: Styles.brown,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '123 Barber St. London',
                                      style: Styles.txtGeneralWhiteSmall,
                                    )
                                  ],
                                ),
                                trailing: CustomButton(
                                    buttonName: 'BOOK',
                                    navigator: () {},
                                    buttonColor: Styles.black,
                                    textStyle: Styles.txtGeneralWhite),
                              ),
                              const Divider(
                                height: 16,
                              )
                            ],
                          );
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
