import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 8,
        runSpacing: 16,
        children: [
          BuildAdvantageWidget(
            title: '+45,000 alunos',
            subtitle: 'Didática garantida',
          ),
          BuildAdvantageWidget(
            title: '+45,000 alunos',
            subtitle: 'Didática garantida',
          ),
          BuildAdvantageWidget(
            title: '+45,000 alunos',
            subtitle: 'Didática garantida',
          ),
        ],
      ),
    );
  }
}

class BuildAdvantageWidget extends StatelessWidget {
  BuildAdvantageWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}
