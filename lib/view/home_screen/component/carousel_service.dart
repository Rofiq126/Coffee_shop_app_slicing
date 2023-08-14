import 'package:barbershop_app/common/style/style.dart';
import 'package:barbershop_app/view/home_screen/component/data.dart';
import 'package:flutter/material.dart';

class CarouselService extends StatefulWidget {
  CarouselService({Key? key}) : super(key: key);

  @override
  State<CarouselService> createState() => _CarouselServiceState();
}

class _CarouselServiceState extends State<CarouselService> {
  DatabaseAsset databaseAsset = DatabaseAsset();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 15),
          child: Text(
            'Service',
            style: Styles.txtGeneralTitleWhite,
          ),
        ),
        Flexible(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: databaseAsset.dataAsset.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Container(
                    width: size.width * 0.3,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                databaseAsset.dataAsset[index].pathName,
                                color: Styles.brown,
                              ),
                            ),
                            Text(
                              databaseAsset.dataAsset[index].name,
                              style: Styles.txtGeneralBlack,
                            ),
                            Text(
                              databaseAsset.dataAsset[index].numberService,
                              style: Styles.txtGeneralBlackSmall,
                            )
                          ],
                        )),
                  ),
                );
              }),
        )
      ],
    );
  }
}
