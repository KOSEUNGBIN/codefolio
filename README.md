#CodeFOLIO란?
![CodeFOLIO?] (http://oursoccer.co.kr/study/reserve/img/codefolio_origin.PNG)

###**깃허브 + 블로그 = CodeFOLIO**
사용자의 **소스 commit**, **블로그 포스팅**, 각종 이벤트를 **타임라인**으로 구성하여 하나의 **포트폴리오**를 만들어주는 웹서비스

개발자 또는 대학생들이 그동안 수행해왔던 과제, 프로젝트, 스터디등의 소스와 스터디 자료들이 담겨있는 블로그들을 타임라인으로 만들어 
**개발자로써의 성장과정과 능력**을 효과적으로 보여줄 수 있는 자료를 제공하는 것이 목적입니다.




# 주요기능
![jgit](https://git-scm.com/images/logo@2x.png)  ![ckeditor](http://a.cksource.com/e/1/img/logo-ckeditor-h100.png)  ![TimelineJS](http://onmedia.dw-akademie.com/english/files/TimelineJS-logo-300x96.jpg)
####1. Git을 이용한 소스 저장 관리     
####2. CKEditor 기반의 블로그 
####3. JSON + TimelineJS를 이용한 타임라인 구성
####4. Spring MVC + MySQL + JavaScript 사용




#확장성
- 블로그와 소스저장소를 연동하여 효과적인 블로깅지원
- SNS 기능을 추가하여 다른 사람과 소스 공유, 팀프로젝트 제안




#배포 라이센스
MIT license를 통하여 배포 (README.md 참조)




#실행방법
MySQL 설정
`/codefolio/src/main/resources/config/spring/context-datasource.xml` 경로에 접근하여
아래코드의 `property`를 설정합니다

```
 <property name="driverClassName" value="com.mysql.jdbc.Driver"/>
        <property name="url" value="jdbc:mysql://[URL]"/>
        <property name="username" value="[ID]"/>
        <property name="password" value="[password]"/>
```

설정이 끝나면 코드를 실행하고  
`http://localhost:8080/codefolio/front/Main.do`
에 접속해 주시면 됩니다.


#실행화면

###< 타임라인(메인페이지) >
![timeline](http://oursoccer.co.kr/study/reserve/img/home_img.png)


###< 글쓰기 페이지 >
![boardWrite](http://oursoccer.co.kr/study/reserve/img/blog_write.png)


###< 소스저장소 >
![gitDirectory](http://oursoccer.co.kr/study/reserve/img/git_directory.png)



[PPT URL](http://www.slideshare.net/ssuser980538/codefolio-ppt-56740769)
[YOUTUBE URL](https://youtu.be/P7sICkc1dsY)





