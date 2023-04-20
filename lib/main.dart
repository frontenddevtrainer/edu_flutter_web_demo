import 'package:edu_flutter_web_demo/widgets/home_screen.dart';
import 'package:edu_flutter_web_demo/widgets/products_details.dart';
import 'package:edu_flutter_web_demo/widgets/products_screen.dart';
import 'package:flutter/material.dart';
import "package:flutter_web_plugins/flutter_web_plugins.dart";

void main() {
  usePathUrlStrategy();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/products": (context) => ProductScreen(),
        // "/product-details/:id":(context) => const ProductsDetail()
      },
      onGenerateRoute: (settings) {
        final url = Uri.parse(settings.name as String);

        print(url.pathSegments);

        if (url.pathSegments.first == "product-details") {
          final String id = url.pathSegments[1];
          if (id != null) {
            return MaterialPageRoute(
              builder: (context) {
                return ProductDetails(
                  id: id,
                );
              },
            );
          }
        }

        return null;
      },
      theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: const TextTheme(
              displayLarge: TextStyle(fontFamily: "SedgwickAve", fontSize: 36))
          // fontFamily: "SedgwickAve"

          ),
    );
  }
}
