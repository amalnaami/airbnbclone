import 'package:flutter/material.dart';

class ItemImageSlider extends StatefulWidget {
  final Function(int)? onImageSlide;
  final List<String> images;
  final Function()? likeAction;
  final bool isFav;
  final int indexPage;

  const ItemImageSlider({
    Key? key,
    required this.onImageSlide,
    required this.images,
    required this.likeAction,
    required this.isFav,
    required this.indexPage,
  }) : super(key: key);

  @override
  State<ItemImageSlider> createState() => _ItemImageSliderState();
}

class _ItemImageSliderState extends State<ItemImageSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: widget.onImageSlide,
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    right: 10,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey[100]!,
                            child: const Icon(
                              Icons.arrow_back_outlined,
                              color: Color(0xFF000000),
                            ),
                          ),
                          const Spacer(),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey[100]!,
                            child: const Icon(
                              Icons.upload_outlined,
                              color: Color(0xFF000000),
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: widget.likeAction,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: const Color(0xFFF5F5F5),
                              child: Icon(
                                widget.isFav
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: widget.isFav
                                    ? const Color(0xFFB71C1C)
                                    : const Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: widget.images.length * 15,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFF000000).withOpacity(0.7),
              ),
              child: Text(
                '${widget.indexPage + 1} / ${widget.images.length}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'ManropeRegular',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
