
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: LDraggableScrollableSheet(),));
// }
// class LDraggableScrollableSheet extends StatelessWidget {
//   const LDraggableScrollableSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return DraggableScrollableSheet(
//       builder: (BuildContext context, ScrollController scrollController) {
//         return Container(
//           color: Colors.amber,
//           child: ListView.builder(
//             controller: scrollController,
//             itemCount: 25,
//             itemBuilder: (BuildContext context, int index) {
//               return Card(child: Text('Item $index'));
//             },
//           ),
//         );
//       },
//     );
//   }
// }
void main(){
  runApp(MaterialApp(home: rj(),));
}
class rj extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(builder: (BuildContext context,ScrollController scrollController){
      return Container(
        color: Colors.amber,
        child: ListView.builder(
          controller: scrollController,
            itemBuilder:(BuildContext context,int index){
            return Card(
              child: Text('item $index'),
            );
            },itemCount: 25,),
      );
    });
  }

}

