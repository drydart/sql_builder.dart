/* This is free and unencumbered software released into the public domain. */

/// SQL Query Builder for Dart
library sql_builder;

export 'src/builder.dart' show SQLBuilder;
export 'src/delete_query.dart' show SQLDeleteQuery;
export 'src/select_query.dart' show SQLSelectQuery;
export 'src/update_query.dart' show SQLUpdateQuery;
export 'src/where_clause.dart' show SQLWhereClause;

import 'src/delete_query.dart' show SQLDeleteQuery;
import 'src/select_query.dart' show SQLSelectQuery;
import 'src/update_query.dart' show SQLUpdateQuery;

abstract class SQL {

  static SQLDeleteQuery delete() {
    return SQLDeleteQuery();
  }

  static SQLSelectQuery select([final List<String> projection]) {
    return SQLSelectQuery(projection);
  }

  static SQLUpdateQuery update() {
    return SQLUpdateQuery();
  }
}
