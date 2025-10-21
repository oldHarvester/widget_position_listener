import 'package:flutter/material.dart';
import 'package:widget_position_listener/widget_position_listener.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Example page'),
      // ),
      body: ListView.separated(
        itemCount: 100,
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemBuilder: (context, index) {
          return WidgetPositionListener(
            id: WidgetPositionId(id: index),
            onChange: (id, positionState, updateType) {
              final metrics = positionState.positionMetrics;
              if (id.id == 5) {
                if (updateType == WidgetPositionUpdatedType.position) {
                  final isVisible = metrics.isVisible();
                  final fullyVisible = metrics.isFullyVisible();
                  print('is visible: $isVisible, fully visible: $fullyVisible');
                }
              }
            },
            child: SizedBox(
              height: 64,
              child: Text('index: $index'),
            ),
          );
        },
      ),
    );
  }
}
