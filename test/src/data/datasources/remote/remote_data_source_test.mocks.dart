// Mocks generated by Mockito 5.4.4 from annotations
// in astro_snap/test/src/data/remote/remote_data_source_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:convert' as _i6;
import 'dart:io' as _i4;
import 'dart:typed_data' as _i8;

import 'package:astro_snap/src/infrastructure/utils/connectivity_utils.dart'
    as _i9;
import 'package:astro_snap/src/infrastructure/utils/file_utils.dart' as _i12;
import 'package:hive/hive.dart' as _i3;
import 'package:hive/src/box/default_compaction_strategy.dart' as _i11;
import 'package:hive/src/box/default_key_comparator.dart' as _i10;
import 'package:http/http.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;
import 'package:path_provider/path_provider.dart' as _i14;
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart'
    as _i13;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0 extends _i1.SmartFake implements _i2.Response {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_1 extends _i1.SmartFake
    implements _i2.StreamedResponse {
  _FakeStreamedResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBox_2<E1> extends _i1.SmartFake implements _i3.Box<E1> {
  _FakeBox_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLazyBox_3<E1> extends _i1.SmartFake implements _i3.LazyBox<E1> {
  _FakeLazyBox_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDirectory_4 extends _i1.SmartFake implements _i4.Directory {
  _FakeDirectory_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i2.Client {
  MockClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i5.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i5.Future<_i2.Response>);

  @override
  _i5.Future<_i2.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i5.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i5.Future<_i2.Response>);

  @override
  _i5.Future<_i2.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i6.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i5.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i5.Future<_i2.Response>);

  @override
  _i5.Future<_i2.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i6.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i5.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i5.Future<_i2.Response>);

  @override
  _i5.Future<_i2.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i6.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i5.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i5.Future<_i2.Response>);

  @override
  _i5.Future<_i2.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i6.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i5.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i5.Future<_i2.Response>);

  @override
  _i5.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i5.Future<String>.value(_i7.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i5.Future<String>);

  @override
  _i5.Future<_i8.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i5.Future<_i8.Uint8List>.value(_i8.Uint8List(0)),
      ) as _i5.Future<_i8.Uint8List>);

  @override
  _i5.Future<_i2.StreamedResponse> send(_i2.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i5.Future<_i2.StreamedResponse>.value(_FakeStreamedResponse_1(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i5.Future<_i2.StreamedResponse>);

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ConnectivityUtils].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivityUtils extends _i1.Mock implements _i9.ConnectivityUtils {
  MockConnectivityUtils() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<bool> hasConnectivity() => (super.noSuchMethod(
        Invocation.method(
          #hasConnectivity,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
}

/// A class which mocks [HiveInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockHiveInterface extends _i1.Mock implements _i3.HiveInterface {
  MockHiveInterface() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void init(
    String? path, {
    _i3.HiveStorageBackendPreference? backendPreference =
        _i3.HiveStorageBackendPreference.native,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #init,
          [path],
          {#backendPreference: backendPreference},
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Box<E>> openBox<E>(
    String? name, {
    _i3.HiveCipher? encryptionCipher,
    _i3.KeyComparator? keyComparator = _i10.defaultKeyComparator,
    _i3.CompactionStrategy? compactionStrategy = _i11.defaultCompactionStrategy,
    bool? crashRecovery = true,
    String? path,
    _i8.Uint8List? bytes,
    String? collection,
    List<int>? encryptionKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #openBox,
          [name],
          {
            #encryptionCipher: encryptionCipher,
            #keyComparator: keyComparator,
            #compactionStrategy: compactionStrategy,
            #crashRecovery: crashRecovery,
            #path: path,
            #bytes: bytes,
            #collection: collection,
            #encryptionKey: encryptionKey,
          },
        ),
        returnValue: _i5.Future<_i3.Box<E>>.value(_FakeBox_2<E>(
          this,
          Invocation.method(
            #openBox,
            [name],
            {
              #encryptionCipher: encryptionCipher,
              #keyComparator: keyComparator,
              #compactionStrategy: compactionStrategy,
              #crashRecovery: crashRecovery,
              #path: path,
              #bytes: bytes,
              #collection: collection,
              #encryptionKey: encryptionKey,
            },
          ),
        )),
      ) as _i5.Future<_i3.Box<E>>);

  @override
  _i5.Future<_i3.LazyBox<E>> openLazyBox<E>(
    String? name, {
    _i3.HiveCipher? encryptionCipher,
    _i3.KeyComparator? keyComparator = _i10.defaultKeyComparator,
    _i3.CompactionStrategy? compactionStrategy = _i11.defaultCompactionStrategy,
    bool? crashRecovery = true,
    String? path,
    String? collection,
    List<int>? encryptionKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #openLazyBox,
          [name],
          {
            #encryptionCipher: encryptionCipher,
            #keyComparator: keyComparator,
            #compactionStrategy: compactionStrategy,
            #crashRecovery: crashRecovery,
            #path: path,
            #collection: collection,
            #encryptionKey: encryptionKey,
          },
        ),
        returnValue: _i5.Future<_i3.LazyBox<E>>.value(_FakeLazyBox_3<E>(
          this,
          Invocation.method(
            #openLazyBox,
            [name],
            {
              #encryptionCipher: encryptionCipher,
              #keyComparator: keyComparator,
              #compactionStrategy: compactionStrategy,
              #crashRecovery: crashRecovery,
              #path: path,
              #collection: collection,
              #encryptionKey: encryptionKey,
            },
          ),
        )),
      ) as _i5.Future<_i3.LazyBox<E>>);

  @override
  _i3.Box<E> box<E>(String? name) => (super.noSuchMethod(
        Invocation.method(
          #box,
          [name],
        ),
        returnValue: _FakeBox_2<E>(
          this,
          Invocation.method(
            #box,
            [name],
          ),
        ),
      ) as _i3.Box<E>);

  @override
  _i3.LazyBox<E> lazyBox<E>(String? name) => (super.noSuchMethod(
        Invocation.method(
          #lazyBox,
          [name],
        ),
        returnValue: _FakeLazyBox_3<E>(
          this,
          Invocation.method(
            #lazyBox,
            [name],
          ),
        ),
      ) as _i3.LazyBox<E>);

  @override
  bool isBoxOpen(String? name) => (super.noSuchMethod(
        Invocation.method(
          #isBoxOpen,
          [name],
        ),
        returnValue: false,
      ) as bool);

  @override
  _i5.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> deleteBoxFromDisk(
    String? name, {
    String? path,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteBoxFromDisk,
          [name],
          {#path: path},
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> deleteFromDisk() => (super.noSuchMethod(
        Invocation.method(
          #deleteFromDisk,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  List<int> generateSecureKey() => (super.noSuchMethod(
        Invocation.method(
          #generateSecureKey,
          [],
        ),
        returnValue: <int>[],
      ) as List<int>);

  @override
  _i5.Future<bool> boxExists(
    String? name, {
    String? path,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #boxExists,
          [name],
          {#path: path},
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  void resetAdapters() => super.noSuchMethod(
        Invocation.method(
          #resetAdapters,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerAdapter<T>(
    _i3.TypeAdapter<T>? adapter, {
    bool? internal = false,
    bool? override = false,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerAdapter,
          [adapter],
          {
            #internal: internal,
            #override: override,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool isAdapterRegistered(int? typeId) => (super.noSuchMethod(
        Invocation.method(
          #isAdapterRegistered,
          [typeId],
        ),
        returnValue: false,
      ) as bool);

  @override
  void ignoreTypeId<T>(int? typeId) => super.noSuchMethod(
        Invocation.method(
          #ignoreTypeId,
          [typeId],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [Box].
///
/// See the documentation for Mockito's code generation for more information.
class MockBox<E> extends _i1.Mock implements _i3.Box<E> {
  MockBox() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Iterable<E> get values => (super.noSuchMethod(
        Invocation.getter(#values),
        returnValue: <E>[],
      ) as Iterable<E>);

  @override
  String get name => (super.noSuchMethod(
        Invocation.getter(#name),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#name),
        ),
      ) as String);

  @override
  bool get isOpen => (super.noSuchMethod(
        Invocation.getter(#isOpen),
        returnValue: false,
      ) as bool);

  @override
  bool get lazy => (super.noSuchMethod(
        Invocation.getter(#lazy),
        returnValue: false,
      ) as bool);

  @override
  Iterable<dynamic> get keys => (super.noSuchMethod(
        Invocation.getter(#keys),
        returnValue: <dynamic>[],
      ) as Iterable<dynamic>);

  @override
  int get length => (super.noSuchMethod(
        Invocation.getter(#length),
        returnValue: 0,
      ) as int);

  @override
  bool get isEmpty => (super.noSuchMethod(
        Invocation.getter(#isEmpty),
        returnValue: false,
      ) as bool);

  @override
  bool get isNotEmpty => (super.noSuchMethod(
        Invocation.getter(#isNotEmpty),
        returnValue: false,
      ) as bool);

  @override
  Iterable<E> valuesBetween({
    dynamic startKey,
    dynamic endKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #valuesBetween,
          [],
          {
            #startKey: startKey,
            #endKey: endKey,
          },
        ),
        returnValue: <E>[],
      ) as Iterable<E>);

  @override
  E? getAt(int? index) => (super.noSuchMethod(Invocation.method(
        #getAt,
        [index],
      )) as E?);

  @override
  Map<dynamic, E> toMap() => (super.noSuchMethod(
        Invocation.method(
          #toMap,
          [],
        ),
        returnValue: <dynamic, E>{},
      ) as Map<dynamic, E>);

  @override
  dynamic keyAt(int? index) => super.noSuchMethod(Invocation.method(
        #keyAt,
        [index],
      ));

  @override
  _i5.Stream<_i3.BoxEvent> watch({dynamic key}) => (super.noSuchMethod(
        Invocation.method(
          #watch,
          [],
          {#key: key},
        ),
        returnValue: _i5.Stream<_i3.BoxEvent>.empty(),
      ) as _i5.Stream<_i3.BoxEvent>);

  @override
  bool containsKey(dynamic key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: false,
      ) as bool);

  @override
  _i5.Future<void> put(
    dynamic key,
    E? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [
            key,
            value,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> putAt(
    int? index,
    E? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #putAt,
          [
            index,
            value,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> putAll(Map<dynamic, E>? entries) => (super.noSuchMethod(
        Invocation.method(
          #putAll,
          [entries],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<int> add(E? value) => (super.noSuchMethod(
        Invocation.method(
          #add,
          [value],
        ),
        returnValue: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);

  @override
  _i5.Future<Iterable<int>> addAll(Iterable<E>? values) => (super.noSuchMethod(
        Invocation.method(
          #addAll,
          [values],
        ),
        returnValue: _i5.Future<Iterable<int>>.value(<int>[]),
      ) as _i5.Future<Iterable<int>>);

  @override
  _i5.Future<void> delete(dynamic key) => (super.noSuchMethod(
        Invocation.method(
          #delete,
          [key],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> deleteAt(int? index) => (super.noSuchMethod(
        Invocation.method(
          #deleteAt,
          [index],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> deleteAll(Iterable<dynamic>? keys) => (super.noSuchMethod(
        Invocation.method(
          #deleteAll,
          [keys],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> compact() => (super.noSuchMethod(
        Invocation.method(
          #compact,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<int> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);

  @override
  _i5.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> deleteFromDisk() => (super.noSuchMethod(
        Invocation.method(
          #deleteFromDisk,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> flush() => (super.noSuchMethod(
        Invocation.method(
          #flush,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [FileUtils].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileUtils extends _i1.Mock implements _i12.FileUtils {
  MockFileUtils() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i4.Directory> getDocumentsDirectory() => (super.noSuchMethod(
        Invocation.method(
          #getDocumentsDirectory,
          [],
        ),
        returnValue: _i5.Future<_i4.Directory>.value(_FakeDirectory_4(
          this,
          Invocation.method(
            #getDocumentsDirectory,
            [],
          ),
        )),
      ) as _i5.Future<_i4.Directory>);
}

/// A class which mocks [PathProviderPlatform].
///
/// See the documentation for Mockito's code generation for more information.
class MockPathProviderPlatform extends _i1.Mock
    implements _i13.PathProviderPlatform {
  MockPathProviderPlatform() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<String?> getTemporaryPath() => (super.noSuchMethod(
        Invocation.method(
          #getTemporaryPath,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<String?> getApplicationSupportPath() => (super.noSuchMethod(
        Invocation.method(
          #getApplicationSupportPath,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<String?> getLibraryPath() => (super.noSuchMethod(
        Invocation.method(
          #getLibraryPath,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<String?> getApplicationDocumentsPath() => (super.noSuchMethod(
        Invocation.method(
          #getApplicationDocumentsPath,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<String?> getApplicationCachePath() => (super.noSuchMethod(
        Invocation.method(
          #getApplicationCachePath,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<String?> getExternalStoragePath() => (super.noSuchMethod(
        Invocation.method(
          #getExternalStoragePath,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<List<String>?> getExternalCachePaths() => (super.noSuchMethod(
        Invocation.method(
          #getExternalCachePaths,
          [],
        ),
        returnValue: _i5.Future<List<String>?>.value(),
      ) as _i5.Future<List<String>?>);

  @override
  _i5.Future<List<String>?> getExternalStoragePaths(
          {_i14.StorageDirectory? type}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getExternalStoragePaths,
          [],
          {#type: type},
        ),
        returnValue: _i5.Future<List<String>?>.value(),
      ) as _i5.Future<List<String>?>);

  @override
  _i5.Future<String?> getDownloadsPath() => (super.noSuchMethod(
        Invocation.method(
          #getDownloadsPath,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);
}