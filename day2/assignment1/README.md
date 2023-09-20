# 2일차 과제

**Quiz**. **다음의 코드의 결과값을 예상해보고, 실행해본 뒤에 에러가 나는 이유를 제출하세요.
(디스코드를 통해 담당 멘토에게 제출해주세요.)**

```dart
ListView(
	children: [
		Text('안녕 난 1번 ListView의 자식이다'),
		Text('나도! 1번 ListView의 자식이야'),
		ListView(
			children: [
				Text('난 2번의 자식임'),
				Text('나도 2번의 자식임'),
			]
		),
		Text('난 멀리 떨어져있지만 1번의 자식이야'),
	]
)
```

**과제 1.** **아래의 이미지와 동일한 결과물을 만들고, 이를 만들기 위한 전체 코드를 작성하세요.** 

- 3가지 이상의 기분을 담고있는 위젯을 페이징이 가능하게 만드세요. (gradient, radius 필수)
- **ListTile 위젯을 사용하지 않고**, 동일한 결과물을 만드세요.
    - 위와 아래를 구분하는 구분선은 **Divider** 위젯입니다.
        
        ```dart
        // 사용 예시
        Column(
        	children: [
        		Text('제목'),
        		Divider(),
        		Text('내용'),
        	]
        )
        ```
        
        ![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/4f763fdd-bbba-45d6-8677-39e1a021e572/76f8b351-1584-4483-a9df-235e9d4eccba/Untitled.png)
        
    
    ![2일차.gif](https://prod-files-secure.s3.us-west-2.amazonaws.com/4f763fdd-bbba-45d6-8677-39e1a021e572/4d67c1ae-6f3f-4557-856a-1734b80fe016/2%EC%9D%BC%EC%B0%A8.gif)