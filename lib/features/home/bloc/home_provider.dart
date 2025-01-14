import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_clean_architecture/features/home/bloc/home_bloc.dart';

class HomeProvider extends BlocProvider<HomeBloc> {
  HomeProvider({
    super.key,
  }) : super(
    create: (context) => HomeBloc(),
  );
}
