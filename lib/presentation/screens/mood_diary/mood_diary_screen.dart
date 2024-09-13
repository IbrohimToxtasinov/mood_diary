import 'package:flutter/material.dart';
import 'package:mood_diary/core/utils/utils.dart';
import 'package:mood_diary/presentation/screens/mood_diary/tabs/add_mood/add_mood_tab.dart';
import 'package:mood_diary/presentation/screens/mood_diary/tabs/statistics/statistics_tab.dart';
import 'package:mood_diary/presentation/screens/mood_diary/widgets/mood_diary_tab.dart';

class MoodDiaryScreen extends StatefulWidget {
  const MoodDiaryScreen({super.key});

  @override
  State<MoodDiaryScreen> createState() => _MoodDiaryScreenState();
}

class _MoodDiaryScreenState extends State<MoodDiaryScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.white,
        title: const Text(
          "1 января 09:00",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.cBCBCBF,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppAssets.icons.calendar.svg(),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoodDiaryTab(
            currentIndex: _currentIndex,
            moodDiaryTap: () {
              setState(() {
                _currentIndex = 0;
              });
            },
            statisticTap: () {
              setState(() {
                _currentIndex = 1;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: _currentIndex == 0
                    ? const AddMoodTab()
                    : const StatisticsTab(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
