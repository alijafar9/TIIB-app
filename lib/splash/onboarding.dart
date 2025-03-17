import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controler = PageController();
  bool isLastpage = false;

  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (index) {
            setState(() => isLastpage = index == 3);
          },
          controller: controler,
          children: [
            buildPage(
              urlImage: 'assets/images/welcome.png',
              Title: 'مرحباً بك',
              SubTitle:
                  'كل الخدمات المصرفية التي تحتاجها بتطبيق واحد\n\nسهل وذكي وآمن',
            ),
            buildPage(
              urlImage: 'assets/images/open_account.png',
              Title: 'فتح حساب اونلاين',
              SubTitle:
                  'افتح حسابك المصرفي مجاناً واطلب بطاقة دفع الكتروني مجانية توصلك لحد بيتك',
            ),
            buildPage(
              urlImage: 'assets/images/pci_image.png',
              Title: 'امن وذكي',
              SubTitle:
                  'آمن ومعزز بالذكاء الاصطناعي و ممتثل لمعايير الحماية الدولية',
            ),
            buildPage(
              urlImage: 'assets/images/trust.png',
              Title: 'موثوق',
              SubTitle:
                  'معتمد من البنك المركزي العراقي وشركة ضمان الودائع والرابطة العراقية للمصارف الاسلامية والعديد من المؤسسات المحلية والدولية',
            ),
          ],
        ),
      ),
      floatingActionButton:
          isLastpage
              ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 70,
                  child: FloatingActionButton(
                    hoverColor: Colors.black,
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    backgroundColor: Color(0xff80166f),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ابدأ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Cairo",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.login, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              )
              : Container(height: 1),
      bottomSheet:
          isLastpage
              ? Container(height: 1)
              : Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => controler.jumpToPage(4),
                      child: Text('تخطي',style: TextStyle(
                        fontFamily: 'Tiib',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        onDotClicked:
                            (index) => controler.animateToPage(
                              index,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            ),
                        controller: controler,
                        count: 4,
                        effect: WormEffect(
                          activeDotColor: Color(0xff80166F),
                          dotColor: Colors.blueAccent.shade100,
                          spacing: 20,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed:
                          () => controler.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          ),
                      child: Text(
                        'التالي',
                        style: TextStyle(
                          fontFamily: 'Tiib',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
    );
  }
}

class buildPage extends StatelessWidget {
  const buildPage({
    super.key,
    required this.urlImage,
    required this.Title,
    required this.SubTitle,
  });

  final String urlImage;
  final String Title;
  final String SubTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              child: Image.asset(
                urlImage,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                Title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'Tiib',
                  color: Color(0xff80166F),
                ),
              ),
            ),

            // SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  SubTitle,
                  style: TextStyle(fontSize: 25, fontFamily: 'Tiib'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
