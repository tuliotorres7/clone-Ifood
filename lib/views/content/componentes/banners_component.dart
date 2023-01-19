import 'package:digi_ofertas/core/theme/app_cores.dart';
import 'package:flutter/material.dart';

class BannersComponent extends StatefulWidget {
  final List<BannerItemComponent> banners;

  const BannersComponent({Key? key, required this.banners}) : super(key: key);

  @override
  State<BannersComponent> createState() => _BannersComponentState();
}

class _BannersComponentState extends State<BannersComponent> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _indexAtual = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(_onChangePage);
  }

  _onChangePage() {
    setState(() {
      _indexAtual = _pageController.page!.toInt();
    });
  }

  @override
  void dispose() {
    _pageController.removeListener(_onChangePage);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: PageView(
                controller: _pageController,
                children: widget.banners,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.banners
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.banners.indexOf(e) == _indexAtual
                                    ? AppCores.grey7
                                    : AppCores.grey3),
                            height: 6,
                            width: 6),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class BannerItemComponent extends StatelessWidget {
  final String pathImagem;

  const BannerItemComponent({Key? key, required this.pathImagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(pathImagem, fit: BoxFit.cover),
      ),
    );
  }
}
