import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:testing/ui/styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      required this.label,
      this.hint,
      this.prefixIcon,
      this.suffixIcon,
      this.isPassword = false})
      : super(key: key);
  final String label;
  final String? hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    Widget passwordIcon = GestureDetector(
        onTap: () {
          setState(() {
            isShow = !isShow;
          });
        },
        child: Icon(isShow ? Iconsax.eye_slash : Iconsax.eye, size: 18,));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          style: Theme.of(context).textTheme.bodyMedium,
          obscureText: widget.isPassword && isShow,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            hintText: widget.hint,
            prefixIcon: widget.prefixIcon == null
                ? null
                : Icon(
                    widget.prefixIcon,
                    color: Styles.grey,
                    size: 18,
                  ),
            suffixIcon: widget.suffixIcon == null
                ? (widget.isPassword ? passwordIcon : null)
                : Icon(
                    widget.suffixIcon,
                    color: Styles.grey,
                    size: 18,
                  ),
          ),
        )
      ],
    );
  }
}
