/* This is free and unencumbered software released into the public domain. */

import 'builder.dart';
import 'where_clause.dart';

class SQLDeleteQuery extends SQLBuilder {
  final SQLWhereClause where = const SQLWhereClause();

  const SQLDeleteQuery();

  @override
  void writeTo(final StringSink sink) {
    assert(sink != null);
    sink.write("DELETE ");
    // TODO
    if (where != null && where.isNotEmpty) {
      sink.write(" ");
      where.writeTo(sink);
    }
  }
}
