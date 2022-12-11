import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

extension WidgetExtension on Widget {

  Container toOutlineContainer({EdgeInsets padding = const EdgeInsets.only(left: 15, right: 15)}) => Container(
      padding: padding,
      child: this,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black26
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5))
      )
  );

  Column toColumn() => Column(
    children: [this],
  );

  Container phoneNumberInput({PhoneNumber? phoneNumber, required Function(bool) onInputValidated, required Function(PhoneNumber) onInputChanged}) => InternationalPhoneNumberInput(
    initialValue: phoneNumber ?? PhoneNumber(isoCode: "CM"),
    onInputValidated: (value) => onInputValidated(value),
    onInputChanged: (value) => onInputChanged(value),
    selectorConfig: const SelectorConfig(
      selectorType: PhoneInputSelectorType.DIALOG,
    ),
    inputDecoration: const InputDecoration.collapsed(hintText: "Phone number"),
  ).toOutlineContainer();

  Center toCenter() => Center(child: this,);
  Flexible toFlexible() => Flexible(child: this);
}

extension ListWidgetExtension on List<Widget?> {
  Row toRow({MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start
  }) => Row(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    children: this as List<Widget>,
  );

  Column toColumn({MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start
  }) => Column(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    children: this as List<Widget>,
  );
}