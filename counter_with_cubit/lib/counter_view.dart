import 'package:counter_with_cubit/cubit/counter_cubit.dart';
import 'package:counter_with_cubit/cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocListener<CounterCubit, CounterState>(
        listener: (context, state) {
          if (state is CounterUpdateState) {
            // ScaffoldMessenger.of(context)
            //     .showSnackBar(const SnackBar(content: Text('data')));
          }
        },
        child: Scaffold(
          body: Center(
            child: BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (state is CounterUpdateState)
                        ? Text(state.counter.toString())
                        : const Text('0'),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton.small(
                          onPressed: () {
                            context.read<CounterCubit>().remove();
                          },
                          child: const Icon(Icons.remove),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton.small(
                          onPressed: () {
                            context.read<CounterCubit>().restart();
                          },
                          child: const Icon(Icons.refresh),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton.small(
                          onPressed: () {
                            context.read<CounterCubit>().add();
                          },
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
