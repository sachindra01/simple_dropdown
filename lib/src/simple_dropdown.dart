import 'package:flutter/material.dart';

class SimpleDropdown<T> extends StatelessWidget {
  final Widget? hintText;
  final List options;
  final bool? isVisible;
  final bool? isUpdate;
  final T ?value;
  final String Function(T?) getLabel;
  final void Function(T?)? onChanged;
  final TextStyle?hintstyle;
  final TextStyle?labelstyle;
  final double ?height;
  final double ?width;
  final String ?labelText;
  final Color ?borderColor;
  final double?borderWidth;
  final IconData?dropdownIcon;
  final Color?dropdownIconColor;

 const SimpleDropdown({Key? key, 
    this.hintText,
    this.options = const [],
    required this.getLabel,
    this.value,
    this.onChanged,
    this.isVisible,
    this.hintstyle,
    this.labelstyle,
    this.isUpdate,
    this.height,
    this.width,
    this.labelText,
    this.borderColor,
    this.borderWidth,
    this.dropdownIcon,
    this.dropdownIconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height??100,
      width: width??100,
      child: FormField<T>(
        builder: (FormFieldState<T> state) {
          return InputDecorator(
            decoration: InputDecoration(
              labelText:labelText?? '',
              labelStyle: labelstyle?? Theme.of(context).textTheme.headline3?.copyWith(fontSize: 11),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 15.0, vertical: 1.0),
              border:OutlineInputBorder(
                borderSide:BorderSide(
                  color: borderColor?? const Color(0x00000000),
                  width: borderWidth??2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            isEmpty: value == null || value == '',
            child: DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                icon: Icon(dropdownIcon??Icons.arrow_drop_down,color: dropdownIconColor??Colors.black,),
                value: value,
                isDense: true,
                hint: hintText,
                style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 11),
                onChanged: onChanged,
                items: options.map((value) {
                  return DropdownMenuItem<T>(
                    value: value,
                    child: Text(getLabel(value),style:value==null
                  ? Theme.of(context).textTheme.headline3?.copyWith()
                  : Theme.of(context).textTheme.headline3?.copyWith(), 
                 ),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}