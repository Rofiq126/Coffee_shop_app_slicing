import 'package:barbershop_app/common/style/style.dart';
import 'package:barbershop_app/common/widget/custom_appBar.dart';
import 'package:barbershop_app/common/widget/custom_button.dart';
import 'package:barbershop_app/view/detail_service/component/data_radio.dart';
import 'package:barbershop_app/view/detail_service/component/radio_button_service.dart';
import 'package:flutter/material.dart';

class DetailService extends StatefulWidget {
  DetailService({Key? key}) : super(key: key);

  @override
  State<DetailService> createState() => _DetailServiceState();
}

class _DetailServiceState extends State<DetailService> {
  String dataValue = '';
  BarberShopService barberService = BarberShopService.hotShave;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Styles.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                  widget: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                ),
              )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Container(
                  width: size.width,
                  height: size.height * 0.78,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1.5, color: Styles.darkBrown)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        Image.asset(
                          'asset/icon/haircut_icon.png',
                          color: Styles.brown,
                          width: size.width * 0.2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Shaving',
                          style: Styles.txtGeneralTitleBlack,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'CHOOSE SERVICE',
                          style: Styles.txtGeneralBlackSmall,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eros nulla, accumsan a mattis ac, luctus pellentesque leo. Praesent vitae ultricies purus.',
                          style: Styles.txtGeneralBlackSmall,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Divider(
                          height: 5,
                          thickness: 1,
                          color: Styles.darkBrown,
                        ),
                        RadioButtonService(
                          dataValue: dataValue,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                            buttonName: 'BOOK AN APPOINTMENT',
                            navigator: () {},
                            buttonColor: Styles.primary,
                            textStyle: Styles.txtGeneralBlack)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
