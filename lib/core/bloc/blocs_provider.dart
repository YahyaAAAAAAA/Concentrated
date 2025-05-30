import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweleve_ace/core/di/dependency_injection.dart';
import 'package:tweleve_ace/features/exam/presentation/cubits/exam_cubit.dart';
import 'package:tweleve_ace/features/exam/presentation/cubits/exams/exams_cubit.dart';
import 'package:tweleve_ace/features/exam/presentation/cubits/questions/questions_cubit.dart';
import 'package:tweleve_ace/features/exam/presentation/cubits/subjects/subjects_cubit.dart';

class AppBlocsProvider extends StatelessWidget {
  final Widget child;

  const AppBlocsProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ExamCubit>()),
        BlocProvider(create: (context) => getIt<SubjectsCubit>()),
        BlocProvider(create: (context) => getIt<ExamsCubit>()),
        BlocProvider(create: (context) => getIt<QuestionsCubit>())
      ],
      child: child,
    );
  }
}
