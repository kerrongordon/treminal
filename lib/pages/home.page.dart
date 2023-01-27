import 'package:flutter/material.dart';
import 'package:prototypes/data/location.data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terminal'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 175,
            child: Stack(children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 175,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100,
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
                              return s.toLowerCase().contains(
                                  textEditingValue.text.toLowerCase());
                            });
                            return matches;
                          }
                        },
                        optionsViewBuilder: (context, onSelected, options) {
                          return const SizedBox(
                            width: 15,
                            child: Card(),
                          );
                        },
                        fieldViewBuilder: (context, textEditingController,
                            focusNode, onFieldSubmitted) {
                          return TextField(
                            focusNode: focusNode,
                            controller: textEditingController,
                            onEditingComplete: onFieldSubmitted,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.home),
                              border: InputBorder.none,
                            ),
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
          ),
          const SizedBox(height: 40),
          Card(
            child: Container(
              color: Colors.green,
              width: double.infinity,
              child: const ListTile(
                title: Text('Title'),
                subtitle: Text('subtitle'),
                isThreeLine: true,
                trailing: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
          Card(
            child: Container(
              color: Colors.green,
              width: double.infinity,
              child: const ListTile(
                title: Text('Title'),
                subtitle: Text('subtitle'),
                isThreeLine: true,
                trailing: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
          Card(
            child: Container(
              color: Colors.green,
              width: double.infinity,
              child: const ListTile(
                title: Text('Title'),
                subtitle: Text('subtitle'),
                isThreeLine: true,
                trailing: Icon(Icons.account_balance_wallet),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
