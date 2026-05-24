import 'package:flutter/material.dart';

class LessonTwelfth extends StatefulWidget {
  const LessonTwelfth({super.key});

  @override
  State<LessonTwelfth> createState() => _LessonTwelfthState();
}

class _LessonTwelfthState extends State<LessonTwelfth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FC),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Оцінка візиту до магазину',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
        child: Column(
          spacing: 8,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    1325132524,
                  ),
                  bottomRight: Radius.circular(
                    24,
                  ),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 48,
                  child: InteractiveStarsWidget(),
                ),
              ),
            ),
            Text(
              'Яку оцінку поставите відділам?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            CardItem(title: 'Випічка'),
            CardItem(title: 'Лавка традицій'),
            CardItem(title: 'Соки та напої'),

            Container(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
              child: Column(
                spacing: 8,
                children: [
                  Text(
                    'Є що додати?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      hintText: 'Поділіться загальним враженням',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(16, 12, 12, 12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 34),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
            backgroundColor: const Color(0xFF1135BA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: const Text(
            'Надіслати',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class InteractiveStarsWidget extends StatefulWidget {
  const InteractiveStarsWidget({super.key});

  @override
  State<InteractiveStarsWidget> createState() => _InteractiveStarsWidgetState();
}

class _InteractiveStarsWidgetState extends State<InteractiveStarsWidget> {
  int _currentRating = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          final starValue = index + 1;
          final isSelected = starValue <= _currentRating;
          return GestureDetector(
            onTap: () {
              setState(() {
                if (starValue == 1 && _currentRating == 1) {
                  _currentRating = 0;
                } else {
                  _currentRating = starValue;
                }
              });
            },
            child: Image.asset(
              isSelected
                  ? 'assets/images/star_rounded.png'
                  : 'assets/images/star_outline_rounded.png',
              width: 48,
              height: 48,
            ),
          );
        }),
      ),
    );
  }
}

class InteractiveLike extends StatefulWidget {
  const InteractiveLike({super.key});

  @override
  State<InteractiveLike> createState() => _InteractiveLikeState();
}

class _InteractiveLikeState extends State<InteractiveLike> {
  int _currentRating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(2, (index) {
        final starValue = index + 1;
        String imageAsset;
        if (starValue == 1) {
          imageAsset = (_currentRating == 1)
              ? 'assets/images/activatedDislike.png'
              : 'assets/images/defaultDislike.png';
        } else {
          imageAsset = (_currentRating == 2)
              ? 'assets/images/activatedLike.png'
              : 'assets/images/defaultLike.png';
        }

        return GestureDetector(
          onTap: () {
            setState(() {
              _currentRating = starValue;
            });
          },
          child: Image.asset(
            imageAsset,
            width: 48,
            height: 48,
          ),
        );
      }),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 10,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            decoration: BoxDecoration(
              color: const Color(0xFFEEF2FC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10,
              children: [
                Text(
                  'Обслуговування',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                InteractiveLike(),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            decoration: BoxDecoration(
              color: const Color(0xFFEEF2FC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10,
              children: [
                Text(
                  'Асортимент',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                InteractiveLike(),
              ],
            ),
          ),
          TextField(
            style: const TextStyle(fontSize: 16, color: Colors.black87),
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              hintText: 'Розкажіть докладніше',
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              contentPadding: const EdgeInsets.fromLTRB(16, 12, 12, 12),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
