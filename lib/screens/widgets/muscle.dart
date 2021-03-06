import 'package:flutter/material.dart';
import 'package:gym_app/models/muscle.dart';

class MuscleGridView extends StatelessWidget {
  final List<ResultMuscle> data;

  MuscleGridView({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: data
                .map((item) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(item.pathImage),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          item.name ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ))
                .toList()));
  }
}
