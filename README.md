## back to the basic

#### 1. Array : avoid index out of range

1) indices.contain(0)

Indices 지수

``` let names = [“apple”, “banana”, “carrot”]

If names.indices.contains(0) {
    print(names[0])
}

하지만, 위의 방법은 무조건 loop를 돌기 때문에 
크기가 큰 배열의 경우 비효율적이다.

2) check upper index and lower index

``` 
If index > = names.startIndex && index < names.endIndex {
    print(names[index])
}


#### 2. Opaque type

A function or method with an opaque return type 
: hides sites return value’s type information
Instead of providing a concrete type as function’s return type

Hiding type information is useful at boundaries between a module and code that calls into the module
Because the underlying type of the return value can remain private.

#### 3. Subscript
Classes, structures, and enumerations can define “subscripts” 
Which are shortcuts for accessing the member elements of a collection, list, or sequence
Set and retrieve values by index without needing separate methods 
You can define multiple subscripts for a single type, being not limited to a single dimension

코드 참고

Subscripts are typically used as a shortcut for accessing the member elements in a collection, list, or sequence
Such as Dictionary type implements its key-value subscripting  
(Dictionary type implements its key-value subscripting as a subscript that takes and returns an optional type)
=> 모든 key가 value를 갖고 있는 것은 아닐 것이기 때문이고 nil을 assign해서 value를 delete 할 수 있게 한다.

#### 4. Initializers
property 초기화에 사용된다.
구조체에서는 따로 생성자를 생성하지 않아도 된다.

#### 5.Extensions
Be able to add new functionality to a type, but they can’t override existing functionality

#### 6.Protocols
It defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality
( 자바의 인터페이스와 유사한 느낌)


#### 7. Structures and Classes

java와는 달리 따로 interface, class 파일을 생성할 필요 없이 single file 로 관리 
외부에 작성된 class,structure 는 자동으로 다른 코드에서 사용할 수 있다.
새로운 사용자 정의형 datatype 

1) Compare Structure with class

(1) pros
- define properties to store values
- define methods to provide functionality
=> property와 method를 가지는 구조체라는 점에서 유사
- define subscripts to provide access to their values 
- define initializers to set up their initial state
- be extended to expand their functionality
- conform to protocols to provide standard functionality

(2) cons
- classes have additional capabilities
- inheritance enables one class to inherit the characteristics
- type casting enables you to check and interpret the type of a class instance 
- deinitialization
- automatic reference counting

*Struct의 인스턴스는 var, class의 인스턴스는 참조형*
따라서 struct 를 상수로 선언할 경우 내부 prop이 변수여도 그 prop 값을 변경할 수 없다***
Class 의 경우 참조형이므로 상관 없다.

#### 8.Properties
1) sotred prop
2) computed prop
- struct, class, enum 모두 가능
- 값 직접 저장하지 않지만 setter, getter 사용하여 접근한다.
- property observer : property 가 set 될 경우 call 되고 저장 프로퍼티, override 된 계산 프로퍼티에서 사용된다
3) type prop
- 인스턴스의 생성없이 객체 내 prop에 접근한다
- 저장 프로퍼티, 계산 프로퍼티에서만 사용할 수 있고 static 키워드 사용한다.

cf1. Apache Cordova

- W-Hybrid가 사용하고 있는 platform : 아파치 코도바
- Objetive-c처럼 기기 특화 된 언어 대신 자바스크립트,HTML5,CSS3를 이용
- 응용 프로그램의 결과물들은 하이브리드 형태
- 레이아웃 렌더링이 플래솜의 네이티브 UI 프레임워크가 아니라 웹 뷰를 통해 수행되며
- 웹앱일 뿐만 아니라 배포를 위해 패키지화되면서 네이티브 기기 API 에 접근할 수 있다.

cf2. Safari inspector
iPhone 에서 safari 통해 접속한 페이지를 디버깅할 수 있다.
참고: https://d0gf00t.tistory.com/41

cf3. iTerm2 
터미널 사용
명령어들을 조금씩 공부하도록 하자

cf4. iOS 개발 디자인 패턴

1) MVC
- model , view, controller
- 기존의 mvc 패턴과 다르다. View 와 controller가 강하게 연결되어 있어 View Controller 가 거의 모든 일을 한다.
- Massive View Controller
- controller 가 view의 life cycle 에 관여하기 때문에 분리가 어렵다.

2) MVVM
- model view viewModel
-  controller 를 빼고 viewModel 을 추가한 패턴
- view controller -> view 
- viewModel은 view에 대해 모르기 때문에 테스트가 쉽고 바인딩으로 인해 코드가 줄어든다.
- 이 패턴은 주로 reactive programming 에 사용된다

3) VIPER
- view, interactor, presenter, entities, router
- entity 는 모델 객체, 단순 모델 속성이 있는 dumb model
- interactive는 모델 객체 조작, behavior(use case) 행동에 따라 객체를 조작
- presenter 는 데이터를 interactor 에서 가져오고 언제 view 에 보여줄지 결정 ( view 에 보여주기 전 내용 준비)
- view 는 presenter 에서 어떻게 보여줘야 할지 요청대로 디스플레이하고 입력 받으면 presenter에 전달
- router 는 화면 전환 담당 (navigation information), 어떻게 view 를 전환할지 알고 있음

4) Delegate pattern
- 처리해야 할 일 중 일부를 다른 객체에 넘기는 것
- GUI 기반 프로그래밍에서 일반적으로 사용되는 패턴 (ex) 이벤트 리스너 event listener
- 이벤트 캐치
- 기능을 처리할 객체를 델리게이트로 설정
- 특정 이벤트가 발생할 때 본래의 객체로 전달
- 델리게이트 패턴을 사용하는 모든 객체는 델리게이트 메소드를 정의한 프로토콜을 가짐
- 따라서 델리게이트 메소드를 이용하려면 델리게이트 프로토콜을 구현하는 과정이 반드시 필요

cf5. Collection - difference btw Set and Tuple
- set은 같은 자료형, 중복 허용하지 않음, 내부적으로 hashable 프로토콜 구현 (고정 길이 데이터로 변환)
- tuple은 여러가지 자료형을 저장할 수 있는 *상수*, 크기, 순회 불가

cf6. 조건문
- if 는 조건값이 꼭 Bool 타입이어야 함 (0이 아닌 모든 값이 true 취급 되었던 다른 언어와 차별점)

cf7.struct와 class 의 차이**

Class
- reference types ** >> 메모리 stack 에는 포인터, heap 에 실제 객체 할당
- ARC?? 로 메모리 관리
- 상속 가능
- 타입 캐스팅? => 런타임에서 클래스 인스턴스 타입 확인 가능
- deinit (메모리 할당 해제)
- 같은 클래스 인스턴스를 여러개의 변수에 할당한 뒤 값 변경 => 모든 변수에 영향을 줌 (메모리가 복사 됨)


Struct
- value type **
- 구조체 변수를 새로운 변수에 할당하면 새로운 구조체 할당
- 매번 새로운 메모리에 할당
- 값 자체가 복사 되므로 여러개의 변수에 같은 구조체를 할당하더라도 각각이 다른 변수에 영향을 주지 않음

#### 9. Inheritance

Class 만의 특징 : 부모 클래스의 property, method, subscript 상속 가능
Super - sub
Override 가능 (재정의)
자식 클래스에서 부모 클래스의 프로퍼티에 대한 property observer 구현 가능
(But constant n readonly computed prop은 값 변경 될 가능성이 없기 때문에 구현 불가하다.)

코드 참고

<주의>
- subclass 가 stored prop n computed prop 을 inherited 하면 getter, setter 가질 수 있고 
- prop 재정의 할 경우 이름 뿐만 아니라 type 일치 해야 한다**
- super 에서 read-write prop 이면 sub 에서 readonly 로 만들 수 없다
- super 에서 readonly 일 경우 sub 에서 read-write 로 만들 수 있다
- final property 는 override 할 수 없다.


#### 10. Type casting
인스턴스의 타입을 확인하거나, 
어떤 클래스의 인스턴스를 해당 클래스 계층 구조의 super 클래스나 sub 클래스로 취급 하는 방법

1) checking type
*is (to check whether an instance is of a certain subclass type, return true/false)

2) downcasting

(1) the conditional form : as? , return optional value
(2) the forced form : as!
>> downcast 가 성공할 것이라고 확신할 때, 그렇지 않을 경우 runtime error 발생

#### 11. Assert and Guard
Assert 
- 조건 체크 후 조건 성립되지 않으면 메세지 출력
- 디버깅 모드에서만 동작

Guard
- 검사 후 다음에 오는 코드를 실행할지 결정
- 잘못된 값이 함수에 들어오지 않도록 방어 코드로 사용

#### 12. Protocol
- a blueprint of methods, properties, and other requirements 

1) property requirements
- it doesn’t specify whether the property should be a stored or computed
- name, type, gettable/settable

2) method requirements

3) initialize requirements
- required init() 
- required 명시하는 이유는 sub class 를 위한 것
- final class 인 경우에는 sub class 가 존재하지 않기 때문에 required 명시할 필요 없다


#### 13. Extension
- add new functionality to an existing class, structure, enum or protocol
- override 할 수는 없다

1) 추가 할 수 있는 기능
- 연산 타입 프로퍼티, 연산 인스턴스 프로퍼티
- 타입 메서드, 인스턴스 메서드
- 이니셜라이저
- 서브스크립트 (subscripts = shortcut)
- 중첩 타입
- 특정 프로토콜 준수할 수 있도록 기능 추가

#### 14. Enumerations
열거형?
연관성이 있는 값을 모아 놓은 것

Enum
- case 문과 같이 사용하기에 용이
- associated values
- raw value

#### 15. Optional chaining
- querying and calling properties, methods, and subscripts on an optional that might currently be nil

9. Try - catch
1) throwing
2) catching
3) propagating
4) manipulating

던져진 오류 처리하기
1) 오류발생한 함수를 call 한 곳에 전파  
2) do catch
3) optional
4) 오류 발생 안 할 것이라고 확신

#### 16. Closure
- 코드에서 전달 및 사용할 수 있는 독립 기능 블록
- 일급 객체 역할 (전달인자로 받을 수 있고, 변수 또는 상수에 할당할 수 있고, 리턴할 수 있다)
- unnamed closure
- head in body

#### 17. 고차 함수 high order function
다른 함수를 전달인자로 받거나
함수 실행의 결과를 함수로 반환하는 함수
-map
-filter
-reduce

cf8. UIKit
Construct and manage a graphical, event-driven user interface for iOS app
Provides the window and view architecture for implementing your interface

- event handling
- animation support
- document support
- drawing and printing support
- information about the current device
- text management and display 
- search support
- accessibility support 
- app extension support 
- resource management





