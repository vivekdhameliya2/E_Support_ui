import 'package:e_supports/models/faqs_model.dart';
import 'package:expandable/expandable.dart';

import 'package:flutter/material.dart';

class TestExpandableView extends StatefulWidget {
  @override
  _TestExpandableViewState createState() => _TestExpandableViewState();
}

class _TestExpandableViewState extends State<TestExpandableView> {
  List<FAQs> faqs = [
    FAQs(
      question:
          "Q1: Lorem Ipsum is simply dummy text of the printing and typesetting industry?",
      answer:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    ),
    FAQs(
      question:
          "Q2: Lorem Ipsum is simply dummy text of the printing and typesetting ?",
      answer:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    ),
    FAQs(
      question: "Q3: Lorem Ipsum is simply dummy text of the printing and ?",
      answer:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    ),
    FAQs(
      question: "Q4: Lorem Ipsum is simply dummy text of the printing ?",
      answer:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    ),
    FAQs(
      question: "Q5: Lorem Ipsum is simply dummy text of the ?",
      answer:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    ),
    FAQs(
      question: "Q6: Lorem Ipsum is simply dummy text of ?",
      answer:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    ),
    FAQs(
      question: "Q7: Lorem Ipsum is simply dummy text ?",
      answer:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: faqs.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Card1(
            que: faqs[0].question,
            ans: faqs[0].answer,
          );
        }
        return Card2(que: faqs[index].question, ans: faqs[index].answer);
      },
    );
  }
}

class Card1 extends StatelessWidget {
  final que;
  final ans;

  const Card1({Key key, this.que, this.ans}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Container(
      //height: 60.0,

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )),
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 10.0),
                  child: Text(
                    que,
                    style: TextStyle(color: Colors.grey[700]),
                  )),
              expanded: Container(
                color: Color(0xFFF8EBFE),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          ans,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}

class Card2 extends StatelessWidget {
  final que;
  final ans;

  const Card2({Key key, this.que, this.ans}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Container(
      //height: 60.0,

      decoration: BoxDecoration(
        color: Colors.white,
      ),
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 10.0),
                  child: Text(
                    que,
                    style: TextStyle(color: Colors.grey[700]),
                  )),
              expanded: Container(
                color: Color(0xFFF8EBFE),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          ans,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
