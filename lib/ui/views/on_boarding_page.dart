import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../styles.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Map<String, String>> _carouselData = [];

  @override
  void initState() {
    _carouselData.add({
      'image': 'assets/landing1.png',
      'title': 'Teman Ngobrol Sejati',
      'description':
          'Jadilah dirimu sendiri dengan dukungan penuh dari sahabat setia.'
    });
    _carouselData.add({
      'image': 'assets/landing2.png',
      'title': 'Teman AI Penuh Wawasan',
      'description':
          'Ruang curhat dengan teman AI yang cerdas dan penuh wawasan.'
    });
    _carouselData.add({
      'image': 'assets/landing3.png',
      'title': 'Konseling Online Praktis',
      'description':
          'Terhubung dengan terapis melalui konseling online yang sederhana.'
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: 100.w,
          height: 100.h,
          child: Padding(
            padding: EdgeInsets.all(Styles.defaultPadding),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Image.asset('assets/logo_with_text.png'),
                Expanded(child: _buildCarouselContent()),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {
                            }, child: const Text('Lewati'))),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('Lanjut'))),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCarouselContent() {
    final List<Widget> imageSliders =
        _carouselData.map((item) => _buildCarouselItem(item)).toList();

    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  aspectRatio: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  })),
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _carouselData.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 32,
                height: 8,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Styles.defaultBorderRadius),
                    color: _current == entry.key
                        ? Theme.of(context).primaryColor
                        : Styles.lightGrey),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildCarouselItem(Map<String, String> item) {
    return Column(
      children: [
        Expanded(
            child: Image.asset(
          item['image']!,
          width: 60.w,
        )),
        Text(
          item['title']!,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          item['description']!,
          textAlign: TextAlign.center,
          style: TextStyle(color: Styles.grey),
        ),
      ],
    );
  }
}
