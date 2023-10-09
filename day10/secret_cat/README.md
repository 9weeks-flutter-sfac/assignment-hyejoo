# 과제설명

**제공되는 패키지 secrets_cat_sdk를 활용하여 다음의 기대 결과물을 따라 만드세요.**

- 비밀든는고양이 패키지 : https://pub.dev/packages/secret_cat_sdk
- 이번 과제는 다음의 결과물과 **다른 디자인으로 제작**하는데 목표를 두세요.

![secretcat.gif](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4fc8837b-6d4a-45a6-9588-085d769acee3/secretcat.gif)

- 피그마 링크(참고)
    - https://www.figma.com/file/0S0wzhrJqzYz4wIUmi1QJf/SniperFactory?type=design&node-id=151-2&mode=design&t=CD7cWLAJMOhtXNT7-0
- **Requirements**
    - 앱 이름은 [비밀듣는고양이]가 아닌 다른 이름으로 진행하세요.
    - 앱 내에서 사용될 폰트는 다음과 같습니다.
        - 플러터에 폰트 등록 방법을 검색하여 앱내에 적용할 수 있도록 하세요.
            
            [neo.ttf](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/10163af9-d3a7-43a0-a894-0a93baadc03f/neo.ttf)
            
    - 매인 캐릭터 또한 다음의 링크에서 마음에 드는 이미지를 골라서 진행하세요.
        - [flaticon](https://www.flaticon.com/)
    - 페이지들의 배경이미지는 다음의 링크에서 마음에 드는 이미지를 골라서 진행하세요.
        - [unsplash](https://unsplash.com/)
    - 각 위젯별 애니메이션은 최소 3개 이상이 적용되어야 합니다. 이 때 적용되는 애니메이션은 자유입니다.
        - 이 때 사용하는 애니메이션 패키지는 다음에서 확인하세요.
            - https://pub.dev/packages/animate_do
    - 페이지는 3개 이상입니다. 필수 페이지는 다음과 같습니다.
        - SecretPage : 비밀을 볼 수 있는 페이지며, 모든 비밀을 데이터로 불러오며 각 비밀은 페이지로 이루어짐.
        - AuthorPage : 모든 작성자(회원)을 볼 수 있는 페이지
        - UploadPage: 비밀을 업로드할 수 있는 페이지
    - **secrets_cat_sdk** 패키지를 설치하면 **Author와 Secret 데이터타입**을 사용할 수 있습니다. 
    데이터와 데이터타입을 활용하여 최대한 위 결과물의 비슷하게 앱을 만들어보세요.