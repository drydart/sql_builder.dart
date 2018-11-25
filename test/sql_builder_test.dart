/* This is free and unencumbered software released into the public domain. */

import 'package:test/test.dart';
import 'package:sql_builder/sql_builder.dart';

void main() {
  group("SQL.delete", () {
    test("returns an SQLDeleteQuery object", () {
      expect(SQL.delete(), isNotNull);
      expect(SQL.delete(), const TypeMatcher<SQLDeleteQuery>());
    });
  });
  group("SQL.select", () {
    test("returns an SQLSelectQuery object", () {
      expect(SQL.select(), isNotNull);
      expect(SQL.select(), const TypeMatcher<SQLSelectQuery>());
    });
  });
  group("SQL.update", () {
    test("returns an SQLUpdateQuery object", () {
      expect(SQL.update(), isNotNull);
      expect(SQL.update(), const TypeMatcher<SQLUpdateQuery>());
    });
  });
  group("SQLSelectQuery", () {
    test("with empty projection", () {
      expect(SQL.select().toString(), equals("SELECT *"));
      expect(SQL.select([]).toString(), equals("SELECT *"));
    });
    test("with a from table", () {
      expect(SQL.select().from('foo').toString(), equals("SELECT * FROM foo"));
    });
  });
}
