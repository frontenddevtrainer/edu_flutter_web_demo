import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final sWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("News")),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Top news",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris pellentesque rhoncus ipsum, a pretium erat porttitor id. Maecenas sit amet tristique metus, ac fermentum magna. Suspendisse auctor, orci quis maximus semper, velit dolor eleifend mauris, et dapibus erat velit vitae odio. Vestibulum feugiat dui vel mollis dapibus. Aliquam et rhoncus elit. Ut pharetra purus pellentesque odio semper varius. Nam massa ligula, egestas nec elementum et, interdum ut lacus. Pellentesque laoreet congue scelerisque. Nullam dapibus pharetra tristique. Fusce velit nibh, imperdiet vitae varius et, tempus quis nibh. Cras purus urna, consequat eget dapibus a, tincidunt sit amet velit. Curabitur id gravida nisi. Praesent pulvinar augue non accumsan hendrerit. Integer in nisi sed turpis tristique dictum eu non sapien."),
          ),
          Column(children: [
            if (sWidth < 700) ...[
              Image.network(
                "https://picsum.photos/id/237/150/250",
                height: 300,
                width: 200,
              ),
              const Text("Small image")
            ] else ...[
              Image.network(
                "https://picsum.photos/id/238/500/700",
                height: 300,
                width: 200,
              ),
              const Text("Large image")
            ]
          ])
        ]),
      ),
    );
  }
}
