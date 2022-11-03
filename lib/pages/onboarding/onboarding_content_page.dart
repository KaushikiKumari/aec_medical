class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      image: 'assets/images/onboard1.png',
      title: 'Easy Shopping',
      discription:
          "All in one shopping website that provides 100% quality with huge"
          "discount and easy shopping site the carrer ads."),
  UnbordingContent(
      image: 'assets/images/onboard2.png',
      title: 'Secure Payment',
      discription:
          "The career ads endues a secure payment platform and your all credentials information"
          "is private with online payment gateway."),
  UnbordingContent(
      image: 'assets/images/onboard3.png',
      title: 'Quick Delivery',
      discription:
          "Customer satisfaction with high quality products that gives a quick"
          "delivery option without any delay with 100% free service."),
];
