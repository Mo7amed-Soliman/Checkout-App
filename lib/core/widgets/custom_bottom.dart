import 'package:checkout_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.text,
    required this.onTap,
    this.isLoading = false,
  });
  final String text;
  final VoidCallback onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: const Color(0xff34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppStyles.radius),
          ),
        ),
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.white,
              ))
            : Text(
                text,
                style: AppStyles.interMedium20,
              ),
      ),
    );
  }
}
