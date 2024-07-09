import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({super.key});

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  double _lowerValue = 50;
  double _upperValue = 180;

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      handlerAnimation: const FlutterSliderHandlerAnimation(scale: 1),
      selectByTap: true,
      values: [_lowerValue, _upperValue],
      rangeSlider: true,
      // ignoreSteps: [
      //   FlutterSliderIgnoreSteps(from: 8000, to: 12000),
      //   FlutterSliderIgnoreSteps(from: 18000, to: 22000),
      // ],
      max: 500,
      min: 0,
      step: const FlutterSliderStep(step: 1),
      jump: true,
      trackBar: const FlutterSliderTrackBar(
        inactiveDisabledTrackBarColor: Color(0xffECECEC),
        inactiveTrackBarHeight: 6,
        activeTrackBarHeight: 6,
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(3.5),
            right: Radius.circular(3.5),
          ),
        ),
        activeTrackBar: BoxDecoration(color: kGreenColor),
      ),
      tooltip: FlutterSliderTooltip(
        positionOffset: FlutterSliderTooltipPositionOffset(top: 80),
        disableAnimation: true,
        custom: (value) {
          return Text(
            "${value.toString()} SAR",
            style: Styles.textStyleSfProDisplayMedium16,
          );
        },
        boxStyle: const FlutterSliderTooltipBox(
            decoration: BoxDecoration(color: Colors.transparent)),
        alwaysShowTooltip: true,
      ),
      handler: FlutterSliderHandler(
        decoration: const BoxDecoration(),
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: kGreenColor,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
      ),
      rightHandler: FlutterSliderHandler(
        decoration: const BoxDecoration(),
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: kGreenColor,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
      ),
      // disabled: false,
      onDragging: (handlerIndex, lowerValue, upperValue) {
        _lowerValue = lowerValue;
        _upperValue = upperValue;
        setState(() {});
      },
    );
  }
}
