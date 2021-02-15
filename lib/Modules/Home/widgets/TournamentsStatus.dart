import 'package:flutter/material.dart';

import 'package:gametv/Modules/Utils/AppColors.dart';

import 'TournamentsType.dart';

class TournamentsStatus extends StatelessWidget {
  const TournamentsStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            height: 80,
            width: size.width - 30,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                TournamentsType(
                  count: "34",
                  type: "tournaments",
                  status: "played",
                  gradient: AppColors.gradientColor(
                      Colors.orange[800], Colors.orange[400]),
                ),
                SizedBox(
                  width: 1,
                ),
                TournamentsType(
                  count: "09",
                  type: "tournaments",
                  status: "won",
                  gradient: AppColors.gradientColor(
                      Colors.purple[800], Colors.purple[400]),
                ),
                SizedBox(
                  width: 1,
                ),
                TournamentsType(
                  count: "26 %",
                  type: "winning",
                  status: "percentage",
                  gradient: AppColors.gradientColor(
                      Colors.deepOrange[800], Colors.deepOrange[300]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
