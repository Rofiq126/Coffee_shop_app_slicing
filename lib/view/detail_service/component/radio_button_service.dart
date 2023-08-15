import 'package:barbershop_app/common/style/style.dart';
import 'package:barbershop_app/view/detail_service/component/data_radio.dart';
import 'package:flutter/material.dart';

class RadioButtonService extends StatefulWidget {
  String dataValue;
  RadioButtonService({Key? key, required this.dataValue}) : super(key: key);

  @override
  State<RadioButtonService> createState() => _RadioButtonServiceState();
}

class _RadioButtonServiceState extends State<RadioButtonService> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: dataService.length,
        itemBuilder: (context, index) {
          return RadioListTile(
              value: dataService[index].name,
              groupValue: widget.dataValue,
              activeColor: Styles.brown,
              onChanged: (value) {
                setState(() {
                  widget.dataValue = value.toString();
                });
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dataService[index].name,
                    style: Styles.txtGeneralBlackSmall,
                  ),
                  Text(
                    '\$ ${dataService[index].price}',
                    style: Styles.txtGeneralBlackSmall,
                  )
                ],
              ));
        });
  }
}
