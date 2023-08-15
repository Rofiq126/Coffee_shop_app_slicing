import 'package:barbershop_app/common/style/style.dart';
import 'package:barbershop_app/common/widget/custom_button.dart';
import 'package:flutter/material.dart';

class ListBottomBarber extends StatefulWidget {
  ListBottomBarber({Key? key}) : super(key: key);

  @override
  State<ListBottomBarber> createState() => _ListBottomBarberState();
}

class _ListBottomBarberState extends State<ListBottomBarber> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                                image: NetworkImage(
                                    'https://i.pinimg.com/564x/0b/d9/1f/0bd91ffc49532aa1a3fea4f9235673e1.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      title: const Text(
                        'Tine Lee',
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
    );
  }
}
