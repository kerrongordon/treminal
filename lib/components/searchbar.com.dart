import 'package:flutter/material.dart';
import 'package:prototypes/data/location.data.dart';

class SearchBarCom extends StatelessWidget {
  const SearchBarCom({
    Key? key,
    required this.onSelected,
  }) : super(key: key);

  final void Function(String p1) onSelected;

  @override
  Widget build(BuildContext context) {
    return Autocomplete(
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
            // color: Colors.white,
            elevation: 10,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 200, maxWidth: 325),
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
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) {
        return TextField(
          focusNode: focusNode,
          controller: textEditingController,
          onEditingComplete: onFieldSubmitted,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.location_on),
              // fillColor: Colors.white.withOpacity(0.8),
              border: InputBorder.none,
              hintText: 'Search Destination'),
          autofillHints: locationList,
        );
      },
      onSelected: (String selection) {
        FocusManager.instance.primaryFocus?.unfocus();
        return onSelected(selection);
      },
    );
  }
}
