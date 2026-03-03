import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/features/recent/presentation/bloc/recent_bloc.dart';
import 'package:mynews/features/recent/presentation/bloc/recent_event.dart';

Future<void> showResetDialog(BuildContext context) async {
  final ok = await showDialog<bool>(
    context: context,
    useRootNavigator: true,
    builder: (dialogContext) => AlertDialog(
      title: const Text('Clear recents?'),
      content: const Text(
        'Recent news will be cleaned. This cannot be undone.',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(dialogContext).pop(false),
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.of(dialogContext).pop(true),
          child: Container(
            width: 70,
            height: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: .circular(13),
            ),
            child: Center(
              child: Text('Clear', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ],
    ),
  );

  if (!context.mounted || ok != true) return;

  context.read<RecentBloc>().add(ClearRecent());
  await showDialog(
    context: context,
    useRootNavigator: true,
    builder: (dialogContext) => AlertDialog(
      title: Text('Done'),
      content: Text('Recents have been cleaned!'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(dialogContext).pop(),
          child: Text('OK'),
        ),
      ],
    ),
  );
}
