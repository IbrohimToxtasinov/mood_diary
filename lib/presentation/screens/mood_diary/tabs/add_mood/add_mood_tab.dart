import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:mood_diary/core/utils/app_assets.dart';
import 'package:mood_diary/core/utils/app_colors.dart';

class AddMoodTab extends StatelessWidget {
  const AddMoodTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Text(
          "Что чувствуешь?",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: AppColors.c4C4C69,
          ),
        ),
        SizedBox(
          height: 118,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: feels.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return Flexible(
                child: Container(
                  height: 118,
                  width: 100,
                  padding: const EdgeInsets.only(top: 23, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: AppColors.cFF8702,
                      borderRadius: BorderRadius.circular(76)),
                  child: Column(
                    children: [
                      feels[index].icon,
                      Text(
                        maxLines: 1,
                        feels[index].label,
                        style: const TextStyle(
                          color: AppColors.c4C4C69,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const Text(
          "Уровень стресса",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: AppColors.c4C4C69,
          ),
        ),
        const Text(
          "Самооценка",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: AppColors.c4C4C69,
          ),
        ),
        const Text(
          "Заметки",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: AppColors.c4C4C69,
          ),
        ),
      ],
    );
  }
}

List<Feel> feels = [
  Feel(
    label: "Радость",
    icon: AppAssets.images.happy.image(height: 50, width: 50),
  ),
  Feel(
    label: "Страх",
    icon: AppAssets.images.fear.image(height: 50, width: 50),
  ),
  Feel(
    label: "Бешенство",
    icon: AppAssets.images.rabies.image(height: 50, width: 50),
  ),
  Feel(
    label: "Грусть",
    icon: AppAssets.images.sadness.image(height: 50, width: 50),
  ),
  Feel(
    label: "Спокойствие",
    icon: AppAssets.images.calmness.image(height: 50, width: 50),
  ),
  Feel(
    label: "Сила",
    icon: AppAssets.images.strength.image(height: 50, width: 50),
  ),
];

class Feel {
  String label;
  Widget icon;

  Feel({required this.label, required this.icon});
}
