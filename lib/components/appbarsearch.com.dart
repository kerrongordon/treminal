import 'package:flutter/material.dart';
import 'package:prototypes/data/location.data.dart';

class AppBarSearchCom extends StatelessWidget {
  const AppBarSearchCom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Stack(children: [
        Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/images/Perspective_View_2.png',
            height: 130,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 140,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            child: Card(
                elevation: 30,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                // color: Colors.yellow,
                child: Autocomplete(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text == '') {
                      return const Iterable<String>.empty();
                    } else {
                      List<String> matches = <String>[];
                      matches.addAll(locationList);

                      matches.retainWhere((s) {
                        return s
                            .toLowerCase()
                            .contains(textEditingValue.text.toLowerCase());
                      });
                      return matches;
                    }
                  },
                  optionsViewBuilder: (context, onSelected, options) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Material(
                        elevation: 4.0,
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                              maxHeight: 200, maxWidth: 325),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: options.length,
                            itemBuilder: (BuildContext context, int index) {
                              final String option = options.elementAt(index);
                              return InkWell(
                                onTap: () {
                                  onSelected(option);
                                },
                                child: Container(
                                  color: Theme.of(context).focusColor,
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(option),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                  fieldViewBuilder: (context, textEditingController, focusNode,
                      onFieldSubmitted) {
                    return TextField(
                      focusNode: focusNode,
                      controller: textEditingController,
                      onEditingComplete: onFieldSubmitted,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.location_on),
                          border: InputBorder.none,
                          hintText: 'Search Destination'),
                      autofillHints: locationList,
                    );
                  },
                  onSelected: (String selection) {
                    print('You just selected $selection');
                  },
                )),
          ),
        ),
      ]),
    );
  }
}
