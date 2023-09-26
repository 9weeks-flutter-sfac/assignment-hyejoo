# 7일차 과제

과제 1. **“아래로 당겨서 새로고침”은 UX 관점에서 매우 편리하고 새로운 데이터를 요청하고 보여주기 위한 좋은 수단이된다. 지정된 패키지를 활용하여 아래 결과와 동일한 결과물을 만드시오.
(과제 1, 2번은 페이지 전환이 되도록 작성하시오)**

- 사진 리스트
    
    ```dart
    final imageUrl = [
      "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/33053/dog-young-dog-small-dog-maltese.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/2664417/pexels-photo-2664417.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/10361796/pexels-photo-10361796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/9409823/pexels-photo-9409823.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    ];
    ```
    
- 패키지 명 : **pull_to_refresh**
- **결과**
    - 아래로 당기면 새로운 랜덤 이미지로 바뀐다.
    - pull_to_refresh 패키지를 사용할 때 **header: WaterDropHeader(),** 를 활용한다.
        
        ![7-1.gif](https://prod-files-secure.s3.us-west-2.amazonaws.com/4f763fdd-bbba-45d6-8677-39e1a021e572/4b3eefac-efc1-4635-a260-cd5d370aa6e5/7-1.gif)
        

과제 2. **“Slider, Carousel”를 지정된 패키지를 활용하여 다음의 결과물을 만드시오**

- 패키지 명 : **carousel_slider**
- **결과**
    - 결과물의 데이터는 과제 1번의 데이터를 활용할 수 있다.
    - 2.5초마다 다음 페이지로 자동으로 넘어가도록 설정하시오.
        
        ![7-2.gif](https://prod-files-secure.s3.us-west-2.amazonaws.com/4f763fdd-bbba-45d6-8677-39e1a021e572/337651ee-8c99-4b46-91c1-0fc955662a4b/7-2.gif)