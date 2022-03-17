import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:t_s_zh/utils/utils.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: kIsWeb ? const CircularProgressIndicator(strokeWidth: 2) : Platform.isAndroid
          ? const CircularProgressIndicator(strokeWidth: 2)
          : const CupertinoActivityIndicator(radius: 10),
    );
  }
}

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      color: AppColors.black.withOpacity(0.4),
      child: const Loader(),
    );
  }
}
