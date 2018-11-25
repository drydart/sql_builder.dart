/* This is free and unencumbered software released into the public domain. */

import 'builder.dart';
import 'where_clause.dart';

class SQLUpdateQuery extends SQLBuilder {
  final SQLWhereClause where = const SQLWhereClause();

  const SQLUpdateQuery();

  @override
  void writeTo(final StringSink sink) {
    assert(sink != null);
    sink.write("UPDATE ");
    // TODO
    if (where != null && where.isNotEmpty) {
      sink.write(" ");
      where.writeTo(sink);
    }
  }
}
