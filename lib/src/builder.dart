/* This is free and unencumbered software released into the public domain. */

abstract class SQLBuilder {
  const SQLBuilder();

  void writeTo(StringSink sink);

  @override
  String toString() {
    final StringBuffer buffer = StringBuffer();
    writeTo(buffer);
    return buffer.toString();
  }
}
