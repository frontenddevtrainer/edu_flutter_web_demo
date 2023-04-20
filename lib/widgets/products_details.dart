import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductDetails extends StatefulWidget {
  final String id;

  const ProductDetails({super.key, required this.id});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final _history = js.context["history"];

  @override
  void initState() {
    if (_history != null) {
      _history
          .callMethod("pushState", [null, "", "product-details/${widget.id}"]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    print(widget.id);

    return const Placeholder();
  }
}
