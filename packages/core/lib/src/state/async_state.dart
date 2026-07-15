import 'package:core/src/failure/failure.dart';

sealed class AsyncState<T> {
  const AsyncState();
}

final class AsyncInitial<T> extends AsyncState<T> {
  const AsyncInitial();
}

final class AsyncLoading<T> extends AsyncState<T> {
  const AsyncLoading();
}

final class AsyncSuccess<T> extends AsyncState<T> {
  const AsyncSuccess(this.data);

  final T data;
}

final class AsyncFailure<T> extends AsyncState<T> {
  const AsyncFailure(this.failure);

  final Failure failure;
}
