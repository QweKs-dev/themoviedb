import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Войти в свою учётную запись'),
      ),
      body: ListView(
        children: [
          const _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 25,),
          _FormWidget(),
          const SizedBox(height: 25,),
          Text(
              'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а '
                  'также получить персональные рекомендации, необходимо войти '
                  'в свою учётную запись. Если у вас нет учётной записи, её '
                  'регистрация является бесплатной и простой. Нажмите здесь, '
                  'чтобы начать.',
          style: textStyle,),
          const SizedBox(height: 25,),
          Text('Если Вы зарегистрировались, но не получили письмо для '
              'подтверждения, нажмите здесь, чтобы отправить письмо повторно.',
          style: textStyle,),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );
    const textFieldDecoration = InputDecoration(border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    isCollapsed: true,
    );
    const colorForTextField = Color(0xFF01B4E4);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Имя пользователя', style: textStyle,),
        TextField(decoration: textFieldDecoration,),
        Text('Пароль', style: textStyle,),
        TextField(decoration: textFieldDecoration,),
      ],
    );
  }
}