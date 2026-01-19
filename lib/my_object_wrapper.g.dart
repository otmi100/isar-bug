// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_object_wrapper.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMyObjectWrapperCollection on Isar {
  IsarCollection<MyObjectWrapper> get myObjectWrappers => this.collection();
}

const MyObjectWrapperSchema = CollectionSchema(
  name: r'MyObjectWrapper',
  id: 6841896801908195978,
  properties: {
    r'stringifiedId': PropertySchema(
      id: 0,
      name: r'stringifiedId',
      type: IsarType.string,
    ),
  },

  estimateSize: _myObjectWrapperEstimateSize,
  serialize: _myObjectWrapperSerialize,
  deserialize: _myObjectWrapperDeserialize,
  deserializeProp: _myObjectWrapperDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'stringifiedId': IndexSchema(
      id: -6257462479289093422,
      name: r'stringifiedId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'stringifiedId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _myObjectWrapperGetId,
  getLinks: _myObjectWrapperGetLinks,
  attach: _myObjectWrapperAttach,
  version: '3.3.0',
);

int _myObjectWrapperEstimateSize(
  MyObjectWrapper object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.stringifiedId.length * 3;
  return bytesCount;
}

void _myObjectWrapperSerialize(
  MyObjectWrapper object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.stringifiedId);
}

MyObjectWrapper _myObjectWrapperDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MyObjectWrapper(
    isarId: id,
    stringifiedId: reader.readString(offsets[0]),
  );
  return object;
}

P _myObjectWrapperDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _myObjectWrapperGetId(MyObjectWrapper object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _myObjectWrapperGetLinks(MyObjectWrapper object) {
  return [];
}

void _myObjectWrapperAttach(
  IsarCollection<dynamic> col,
  Id id,
  MyObjectWrapper object,
) {}

extension MyObjectWrapperQueryWhereSort
    on QueryBuilder<MyObjectWrapper, MyObjectWrapper, QWhere> {
  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MyObjectWrapperQueryWhere
    on QueryBuilder<MyObjectWrapper, MyObjectWrapper, QWhereClause> {
  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterWhereClause>
  isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(lower: isarId, upper: isarId),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterWhereClause>
  isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterWhereClause>
  isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterWhereClause>
  isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterWhereClause>
  isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerIsarId,
          includeLower: includeLower,
          upper: upperIsarId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterWhereClause>
  stringifiedIdEqualTo(String stringifiedId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'stringifiedId',
          value: [stringifiedId],
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterWhereClause>
  stringifiedIdNotEqualTo(String stringifiedId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'stringifiedId',
                lower: [],
                upper: [stringifiedId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'stringifiedId',
                lower: [stringifiedId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'stringifiedId',
                lower: [stringifiedId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'stringifiedId',
                lower: [],
                upper: [stringifiedId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension MyObjectWrapperQueryFilter
    on QueryBuilder<MyObjectWrapper, MyObjectWrapper, QFilterCondition> {
  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'isarId'),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'isarId'),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  isarIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isarId', value: value),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  isarIdGreaterThan(Id? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'isarId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  isarIdLessThan(Id? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'isarId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  isarIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'isarId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'stringifiedId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'stringifiedId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'stringifiedId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'stringifiedId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'stringifiedId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'stringifiedId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'stringifiedId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'stringifiedId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'stringifiedId', value: ''),
      );
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterFilterCondition>
  stringifiedIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'stringifiedId', value: ''),
      );
    });
  }
}

extension MyObjectWrapperQueryObject
    on QueryBuilder<MyObjectWrapper, MyObjectWrapper, QFilterCondition> {}

extension MyObjectWrapperQueryLinks
    on QueryBuilder<MyObjectWrapper, MyObjectWrapper, QFilterCondition> {}

extension MyObjectWrapperQuerySortBy
    on QueryBuilder<MyObjectWrapper, MyObjectWrapper, QSortBy> {
  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterSortBy>
  sortByStringifiedId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringifiedId', Sort.asc);
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterSortBy>
  sortByStringifiedIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringifiedId', Sort.desc);
    });
  }
}

extension MyObjectWrapperQuerySortThenBy
    on QueryBuilder<MyObjectWrapper, MyObjectWrapper, QSortThenBy> {
  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterSortBy>
  thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterSortBy>
  thenByStringifiedId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringifiedId', Sort.asc);
    });
  }

  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QAfterSortBy>
  thenByStringifiedIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringifiedId', Sort.desc);
    });
  }
}

extension MyObjectWrapperQueryWhereDistinct
    on QueryBuilder<MyObjectWrapper, MyObjectWrapper, QDistinct> {
  QueryBuilder<MyObjectWrapper, MyObjectWrapper, QDistinct>
  distinctByStringifiedId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'stringifiedId',
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension MyObjectWrapperQueryProperty
    on QueryBuilder<MyObjectWrapper, MyObjectWrapper, QQueryProperty> {
  QueryBuilder<MyObjectWrapper, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<MyObjectWrapper, String, QQueryOperations>
  stringifiedIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringifiedId');
    });
  }
}
