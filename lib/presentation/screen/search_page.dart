import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading/business/bloc/search_bloc.dart';
import 'package:trading/presentation/widget/script_component.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'Search...',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            context.read<SearchBloc>().add(SearchQueryChanged(value));
          },
        ),
      ),
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state is SearchLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SearchSuccess) {
            if (state.results.isEmpty) {
              return const Center(child: Text("No results found."));
            }

            return ListView.separated(
              itemCount: state.results.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final script = state.results[index];
                return ScriptComponent(
                  cpm: script.cpm.toString(),
                  exchange: script.exchange,
                  fireSpreadValue: script.fireSpreadValue,
                  performance: script.performance,
                  secondSpreadValue: script.secondSpreadValue,
                  title: script.title,
                  isUp: script.isUp,
                );
              },
            );
          } else if (state is SearchError) {
            return Center(child: Text(state.message));
          }

          return const SizedBox(); // initial state
        },
      ),
    );
  }
}
