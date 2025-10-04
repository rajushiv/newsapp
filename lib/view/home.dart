import 'package:flutter/material.dart';
import 'package:newsapp/view/widget/NewsContainer.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PageView.builder(
      controller: PageController(initialPage: 0),
      scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context , index) {
          return NewsContainer(
              imgUrl: "https://media.istockphoto.com/id/928623156/photo/old-newspaper-texture-background.jpg?s=1024x1024&w=is&k=20&c=THtggdiRiXErv_RNB25cVnfHxazhzzxm2IbMec3T-vY=",
              newsDes: "India stands on the brink of a technological revolution with the advent of 5G. This next-generation wireless technology promises to deliver unprecedented speed, ultra-low latency, and massive connectivity. But what does this mean for India? Let's explore some of the most exciting and transformative use cases of 5G in the Indian context.",
              newsHead: "5g in india",
              newsUrl: "https://eservices.dot.gov.in/5g-use-cases-india-perspective",
          );
        }),
    );
  }
}
