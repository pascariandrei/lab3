import 'package:flutter/material.dart';
import '../resources/custom_colors.dart';
import '../resources/text_styles.dart';
import '../widgets/grid_widget.dart';

class OutPutWidget extends StatefulWidget {
  const OutPutWidget({Key? key}) : super(key: key);

  @override
  State<OutPutWidget> createState() => _OutPutWidgetState();
}

class _OutPutWidgetState extends State<OutPutWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left:270,bottom: 49.78,top:10 ),
          width: 358,
          child: Text('sss',
            style: TextStyles.sfprotextRegular25
                .copyWith(color: CustomColor.deYork, fontSize: 48)),
        ), Container(
          padding: const EdgeInsets.only(left:270 ),
          width: 358,
          child: Text('Out',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 48)),
        ),
      ],
    );
  }
}
