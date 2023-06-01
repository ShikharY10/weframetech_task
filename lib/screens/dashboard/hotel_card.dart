import 'package:flutter/material.dart';

import '../../utility/widgets/extra_info.dart';

class HotelCard extends StatefulWidget {
  final String assetImagePath;
  final String title;
  final String price;
  final String? subtitle;
  final List<Map<String, String>>? extraInfo;
  final void Function()? onTap;
  const HotelCard(this.assetImagePath, this.title, this.price,  {super.key, this.subtitle, this.extraInfo, this.onTap});

  @override
  State<HotelCard> createState() => _HotelCardState();
}

class _HotelCardState extends State<HotelCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          width: 304,
          height: 293,
          decoration: BoxDecoration(
            color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: Column(
            children: [
              SizedBox(
                width: 302,
                height: 180,
                child: Image(
                  image: AssetImage(widget.assetImagePath)
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      )
                    ),
                    Text(
                      widget.price,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(251, 100, 45, 1)
                      )
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.subtitle ?? "")
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 19.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: extraInfoWidgets()
                ),
              )
            ]
          )
        ),
      ),
    );
  }

  List<Widget> extraInfoWidgets() {
    List<Widget> widgets = [];

    if (widget.extraInfo != null) {
      for (int i=0; i<widget.extraInfo!.length; i++) {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(right: 27.0),
            child: ExtraInfo(
              asset: widget.extraInfo![i]["asset"] ?? "", 
              text: widget.extraInfo![i]["text"] ?? ""
            ),
          ),
        );
      }
    }
    return widgets;
  }
}

