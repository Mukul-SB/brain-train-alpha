import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../basic_features.dart';

class MyTextFieldWithOutBorder extends StatelessWidget {
  final List<TextInputFormatter>? inputFormatters;
  final String? countryCode;
  final String? isdCode;
  final bool showCountryCode;
  final TextCapitalization textCapitalization;
  final double? height;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? title;
  final TextEditingController? textController;
  final Color? hintTextColor;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextInputType? inputType;
  final int? maxLine, maxLength;
  final TextInputType? keyBoardType;
  final bool? obscureText;
  final bool readOnly;
  final Color? backgroundColor;
  final ValueChanged? onChanged;
  final ValueChanged? onFieldSubmit;
  final FormFieldValidator? validator;
  final String? hintText;
  final bool showFlag;
  final Function? getCountryCode;

  const MyTextFieldWithOutBorder(
      {super.key,
      this.showCountryCode = false,
      this.readOnly = false,
      this.getCountryCode,
      this.isdCode,
      this.backgroundColor,
      this.countryCode,
      this.textCapitalization = TextCapitalization.sentences,
      this.inputFormatters,
      this.height,
      this.focusNode,
      this.maxLine = 1,
      this.maxLength,
      this.keyBoardType,
      this.title,
      this.validator,
      this.obscureText = false,
      this.textController,
      this.onFieldSubmit,
      this.hintTextColor,
      this.suffixIcon,
      this.prefixIcon,
      this.onChanged,
      this.textInputAction,
      this.hintText,
      this.inputType,
      this.showFlag = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: showCountryCode,
          child: Padding(
            padding: EdgeInsets.only(bottom: Dimensions.h2),
            child: CountryCodePicker(
              onChanged: (e) {
                /*isdCode=e.dialCode;
                  countryCode=e.code;*/
                // StartupService.setCountryCode(e.code!);
                //StartupService.setIsdCode(e.dialCode!);
                // print(e.dialCode!.replaceAll("+", ""));
                // print(e.code!.replaceAll("+", ""));

                getCountryCode!(e.code, e.dialCode);
              },
              initialSelection: countryCode ?? "+91",
              padding: EdgeInsets.zero,
              textStyle: fontStyleSemiBold14,
              favorite: const ['+91', 'IN'],
              showCountryOnly: false,
              dialogSize: Size(MediaQuery.of(context).size.width - 50,
                  MediaQuery.of(context).size.height - 250),
              showOnlyCountryWhenClosed: false,
              alignLeft: false,
              showFlag: showFlag,
              flagDecoration: const BoxDecoration(shape: BoxShape.circle),
            ),
          ),
        ),
        Expanded(
          child: TextFormField(
            textCapitalization: textCapitalization,
            readOnly: readOnly,
            focusNode: focusNode,
            obscureText: obscureText!,
            style: readOnly
                ? fontStyleMedium14.apply(
                    color: Theme.of(Get.context!)
                        .colorScheme
                        .textColor
                        .withOpacity(0.5))
                : fontStyleSemiBold14.copyWith(
                    color: Get.theme.colorScheme.textColor),
            textAlignVertical: TextAlignVertical.center,
            //  textAlign: TextAlign.center,
            maxLines: maxLine,
            onFieldSubmitted: onFieldSubmit,
            controller: textController,
            textInputAction: textInputAction,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
                // isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.r8),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: EdgeInsets.only(
                    top: Dimensions.h10,
                    left: prefixIcon == null ? Dimensions.w10 : 0),
                fillColor: backgroundColor ?? Colors.transparent,
                filled: true,
                hintText: hintText ?? "",
                hintStyle: fontStyleRegular14.apply(
                    color: Get.theme.colorScheme.hintTextColor),
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 0, minHeight: 0)),

            onChanged: (val) {
              if (onChanged != null) {
                onChanged!(val);
              }
            },
            onSaved: (value) {
              value = textController!.text;
            },
            keyboardType: keyBoardType,
          ),
        ),
      ],
    );
  }
}
