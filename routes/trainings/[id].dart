import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stallet_lib/stallet_lib.dart';
import 'package:uuid/uuid.dart';

FutureOr<Response> onRequest(RequestContext context, String id) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context, id);
    case HttpMethod.post:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context, String id) async {
  final training = Training(
    id: id,
    name: 'Training Fanny',
    sessions: {
      Session(
        id: const Uuid().v4(),
        name: 'Session 1',
        exercises: {
          Exercise(
            id: const Uuid().v4(),
            name: 'DC Smith',
            value: 15,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: '3',
            value: 45,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: '2',
            value: 45,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: 'Tirage Vertical',
            value: 45,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: 'Chaise',
            value: 30,
            unit: 'sec',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: '14',
            value: 50,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
        },
      ),
      Session(
        id: const Uuid().v4(),
        name: 'Session 2',
        exercises: {
          Exercise(
            id: const Uuid().v4(),
            name: 'Élevation latérales',
            value: 6,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: 'Poulie pec',
            value: 10,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: '23',
            value: 35,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: 'Bûcheron',
            value: 18,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: 'Pompes + Dips',
            value: 0,
            unit: '',
            sets: 4,
            reps: 10,
          ),
        },
      ),
      Session(
        id: const Uuid().v4(),
        name: 'Session 3',
        exercises: {
          Exercise(
            id: const Uuid().v4(),
            name: 'Tractions',
            value: 50,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: '5',
            value: 40,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: 'Tirage Horizontal',
            value: 45,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: 'Banc Lombaire',
            value: 12,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
          Exercise(
            id: const Uuid().v4(),
            name: 'Shrug',
            value: 12,
            unit: 'kg',
            sets: 4,
            reps: 10,
          ),
        },
      ),
    },
  );

  return Response.json(
    body: training,
  );
}
