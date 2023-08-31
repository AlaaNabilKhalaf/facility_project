import 'package:facility/features/chat/presentation/views/widgets/chat_success.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';

class ChatSuccess extends StatelessWidget {
  const ChatSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarButton2(text: 'Message center',),
      body: const SucessBody(),
    );
  }
}
