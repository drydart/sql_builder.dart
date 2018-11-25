/* This is free and unencumbered software released into the public domain. */

import 'builder.dart';

class SQLWhereClause extends SQLBuilder {
  const SQLWhereClause();

  bool get isEmpty => true;

  bool get isNotEmpty => !isEmpty;

  @override
  void writeTo(final StringSink sink) {
    assert(sink != null);
    sink.write("WHERE ");
    // TODO
  }
}
