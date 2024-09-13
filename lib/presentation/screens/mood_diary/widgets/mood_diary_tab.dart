import 'package:flutter/material.dart';
import 'package:mood_diary/core/utils/utils.dart';

class MoodDiaryTab extends StatelessWidget {
  final int currentIndex;
  final VoidCallback moodDiaryTap;
  final VoidCallback statisticTap;

  const MoodDiaryTab({
    super.key,
    required this.currentIndex,
    required this.moodDiaryTap,
    required this.statisticTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 43),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(47),
        color: AppColors.cF2F2F2,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _MoodDiaryTabItem(
            onTap: moodDiaryTap,
            isSelected: currentIndex == 0,
            label: "Дневник настроения",
            icon: AppAssets.icons.moodDiary.svg(
              colorFilter: ColorFilter.mode(
                currentIndex == 0 ? AppColors.white : AppColors.cBCBCBF,
                BlendMode.srcIn,
              ),
            ),
          ),
          _MoodDiaryTabItem(
            onTap: statisticTap,
            isSelected: currentIndex == 1,
            label: "Статистика",
            icon: AppAssets.icons.statistic.svg(
              colorFilter: ColorFilter.mode(
                currentIndex == 1 ? AppColors.white : AppColors.cBCBCBF,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MoodDiaryTabItem extends StatelessWidget {
  final bool isSelected;
  final String label;
  final Widget icon;
  final VoidCallback onTap;

  const _MoodDiaryTabItem({
    required this.isSelected,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(47),
            color: isSelected ? AppColors.cFF8702 : AppColors.cF2F2F2,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: isSelected ? AppColors.white : AppColors.cBCBCBF,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
