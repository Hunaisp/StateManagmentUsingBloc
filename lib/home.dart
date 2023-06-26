import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagementusingbloc/Bloc/counterbloc_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    print("rebuilded");
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          BlocBuilder<CounterblocBloc, CounterState>(
            builder: (context, state) {
              return Text(state.counterValue.toString());
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: () {
            context.read<CounterblocBloc>().add(IncrementEvent());
          }, child: Text("Add")),
          SizedBox(
            height: 20,
          ), TextButton(onPressed: () {
            context.read<CounterblocBloc>().add(DecrementEvent());
          }, child: Text("Minus")),
        ],
      ),
    );
  }
}
