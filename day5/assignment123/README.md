과제 1. **다음과 같이 버튼 [1번 과제], [2번 과제], [3번 과제]를 구성하고, 클릭 시 과제 페이지로 이동하도록 만드세요.**

![image](https://github.com/9weeks-flutter-sfac/assignment-hyejoo/assets/134242825/b9a1866c-14f5-4910-b201-dc785f9133a2)


- 1번 과제를 클릭하면, 1번 과제의 내용 페이지로 이동됩니다.
- 2번 과제를 클릭하면, 2번 과제의 내용 페이지로 이동됩니다.
- 3번 과제를 클릭하면, 3번 과제의 내용 페이지로 이동됩니다.

과제 2. **ScrollController를 활용하여 가장 상단으로 이동하는 기능을 구현합니다.**

![image](https://github.com/9weeks-flutter-sfac/assignment-hyejoo/assets/134242825/691f579c-d00e-4e2b-a3a7-83448ec390e2)


- **ListView.builder** 위젯을 활용하여 **높이가 300인 동물 위젯**을 생성합니다.
    - 이 때, 사용되는 데이터는 다음과 같습니다.
        
        ```dart
        List animalList = ['강아지', '고양이', '앵무새', '토끼', '오리', '거위', '원숭이'];
        ```
        
- 하단의 FAB(FloatingActionButton)을 누르면, **스크롤 위치가 최상단으로 이동**되게합니다.
    - 이 때, 사용되는 아이콘 명은 다음과 같습니다.
        
        ```dart
        Icons.vertical_align_top
        ```
        
    

과제 3. **입력된 텍스트 미러링하는 화면을 제작합니다.**

![image](https://github.com/9weeks-flutter-sfac/assignment-hyejoo/assets/134242825/9020df44-724d-483e-98ad-c89f3a838aa1)


- TextField에 입력시, 바로 밑에 위치한 하단의 Text위젯에 똑같이 적용되도록 합니다.
- FAB(FloatingActionButton)을 클릭하면, 작성중이던 모든 내용이 사라집니다.
    - 이 때, 사용되는 아이콘 명은 다음과 같습니다.
        
        ```dart
        Icons.close
        ```
