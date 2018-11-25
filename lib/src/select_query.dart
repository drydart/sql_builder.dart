/* This is free and unencumbered software released into the public domain. */

import 'builder.dart';
import 'where_clause.dart';

class SQLSelectQuery extends SQLBuilder {
  final List<String> projection;
  final SQLWhereClause where = const SQLWhereClause();
  String _from;

  SQLSelectQuery(this.projection);

  SQLSelectQuery from(final String tableName) {
    _from = tableName;
    return this;
  }

  @override
  void writeTo(final StringSink sink) {
    assert(sink != null);
    sink.write("SELECT ");
    if (projection == null || projection.isEmpty) {
      sink.write("*");
    }
    else {
      sink.writeAll(projection, ",");
    }
    if (_from != null) {
      sink.write(" FROM ");
      sink.write(_from);
    }
    if (where != null && where.isNotEmpty) {
      sink.write(" ");
      where.writeTo(sink);
    }
  }
}
