/*
---

### **PlaygroundでSwift Tourを学ぶ手順**
1. **Playgroundファイルの作成**
   - 1つのPlaygroundファイルを作成し、「Swift Tour」専用として使う。

2. **コードの写経と実行**
   - Documentationのコードをそのまま写経してもOK。
   - 行番号横の再生ボタン（▷）を押すと、その行やブロックのコードが実行されます。

3. **試行錯誤**
   - 値を変更したり、コードをアレンジして挙動を確認。
   例：変数の値を変えたり、新しい関数を試してみたり。

4. **結果の確認**
   - Playgroundの右側に結果がリアルタイムで表示されます。
   - 数字やテキスト、グラフなど、結果の種類に応じて見え方が異なる場合もあります。

5. **学習の進捗を記録**
   - 学んだことや気づきをメモすると後で振り返りやすくなります。

---
*/



// 2025/01/23 Kazutoshi Nagahashi
// 「Swift Tour」専用
import UIKit

/* 下記コードのため一旦コメントアウト
var greeting = "Hello, playground"
*/

// "Hello world!"
print("Hello World!")
print("My Name Kazutoshi!")

// ■シンプルな値(Simple Values)
var myVariable = 42
myVariable = 50
let myConstant = 42

myVariable

let implicitInteger = 70
let implicitDouble = 70.0

//このコードは、「explicitDoubleという名前のDouble型の定数を作り、その値を70に設定する」という意味です。
//explicit（明示的）という名前がついているのは、型を明示的に指定していることを示しているからでしょう。
let explicitDouble: Double = 70

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let quotation = """
   Even though there's whitespace to the left,
    the actual lines are't indented.
        Except for this line.
    Double quotes (") can appear without being escaped.

    I still have \(apples + oranges) pieces of fruit.
"""



// 2025/01/25 Kazutoshi Nagahashi
// **クロージャ（Closure）**とは、特定の処理をまとめたコードのかたまりで、名前を持たない関数（無名関数）の一種です。
// Swiftでは、高度な処理やコードの簡略化のために頻繁に使われます。

// 1. クロージャの特徴
// 引数を受け取ったり、値を返したりすることができる。
// 名前を持たない関数なので、その場で直接定義して使います。
// 他の関数やメソッドの引数として渡す場合に便利。

// 2. クロージャの基本構文
// { (引数名: 型, ...) -> 戻り値の型 in
//     実行するコード
// }

// . 簡単なサンプルコード
// （1）基本のクロージャ
let greetClosure = { (name: String) -> String in
    return "Hello, \(name)!"
}
// クロージャを実行
let message = greetClosure("Swift")
print(message) // "Hello, Swift!"

// 解説:
// name: String: クロージャの引数。
// -> String: 戻り値の型。
// "Hello, \(name)!": 処理内容（戻り値）。



// 2025/01/26 Kazutoshi Nagahashi
// ■配列や辞書の作成
// 角括弧([])を使い、それらの要素へアクセスする際は角括弧内にインデックスやキーを書きます。
// 最後の要素の後ろにもカンマ(,)を付けることができます。
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcom": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

// test ok!
print(shoppingList)
print(occupations)

// 配列は要素を追加すると自動でサイズが大きくなります。
shoppingList.append("blue paint")
print(shoppingList)

// 括弧を使用して、空の配列または辞書を記述します。配列の場合は []、辞書の場合は [:] と書きます。

// ここでエラーになったので注意
// 配列の場合、事前に型の指定が必要
// 配列の要素型を指定して、後で空の配列を代入する
var fruits: [String]
fruits = []
occupations = [:]

// 空の配列または辞書を新しい変数
// または型情報がない別の場所に割り当てる場合は、型を指定する必要があります。
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

// ■制御フロー（Control Flow）
// 条件分岐を作成するには、if と switch を使います。
// ループを作成するには for-in while repeat-whileを使います。
// 条件やループ変数やオプショナルに丸括弧(())を付けるかどうかは任意です。
// 本文の周りの中括弧({})は必須です。

// 例：このコードは、配列 individualScores に含まれる個々のスコアをループでチェックし、
// 条件に応じて teamScore に点数を加算しています。

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
// 11



// 2025/01/28 Kazutoshi Nagahashi
/*　おそらくSwiftのバージョン違いによるエラー
let scoreDecoration = if teamScore > 10 {
    "🎉"
} else {
    ""
}
print("Score:", teamScore, scoreDecoration)
// "Score: 11 🎉"を出力
*/

// 修正コード（三項演算子を使用）
let scoreDecoration = teamScore > 10 ? "🎉" : ""
print("Score:", teamScore, scoreDecoration)


var optionalString: String? = "Hello"
print(optionalString == nil)
// false

// オプショナル値が nil の場合、条件は false になり、中括弧内のコードはスキップされます。
// nil でなければ、オプショナル値はアンラップされて let の後の定数に代入され、中括弧内のブロック内でその値を利用できます。
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

// オプショナル値を扱うもう 1 つの方法として、?? 演算子を使用してデフォルトの値を提供する方法があります。
// もしオプショナル値が nil の場合、代わりにデフォルトの値が使われます。
// ？基本的な解説が必要かも？
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

// アンラップ後の変数に同名を用いる場合、右辺を省略することができます。
// オプショナルバインディング（if letで値がある場合だけ処理を行う）
// if letで値がある場合だけ処理を行う
if let nickName {
    print("Hey, \(nickName)")
}

// switchは、あらゆる種類のデータと比較のための演算子を扱うことができます。
// (整数や等価チェックだけに限定されません)
// case let x where 条件
// caseに条件をつけることができる（「where句付きのパターンマッチ」）。
// hasSuffix("pepper")は、文字列の末尾が"pepper"かどうかを判定するメソッド
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// Is it a spicy red pepper?



// for-in を使用することで辞書のそれぞれの要素のキーバリューペアを受け取って、辞書内のアイテムに反復処理をすることができます。
// 辞書は順序のないコレクションなので、受け取るキーバリューペアの順序は決まっていません。
// このコードは、辞書（Dictionary）を使ってカテゴリごとの数値リストを管理し、
// それらの中から最大の数値を見つける処理を行っている
// ✅ 辞書を使ってカテゴリーごとに数値のリストを管理
// ✅ 二重ループでリストのすべての数値を走査
// ✅ largest に最大値を保存しながら更新していく
// ✅ 最終的に最大値を出力
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// 25

// while を使用することで、条件が変わるまでブロック内のコードを反復して実行できます。
// ループの条件を最後に置くことで、ループ内のブロックが少なくとも 1 回実行されるようにすることができます。
// repeat は 「少なくとも1回は必ず実行される while ループ」 のこと。
// 普通の while ループとは 実行の順番 が違うのがポイント。
var n = 2
while n < 100 {
    n *= 2
}
print(n)
// 128

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// 128

// ..< を使用するとインデックスの範囲を生成でき、ループのインデックスを追うことができます。
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// 6



// 2025/02/01
// ■関数とクロージャ(Functions and Closures)
// 関数の定義には func を使います。括弧(())の中に引数のリスト、その前に関数の名前を付けることで関数を呼び出します。
// また、-> の後ろに戻り値の型を指定して、パラメータ名や型と区別します。

// このコードは、数値の配列 (scores) から最小値 (min)、最大値 (max)、合計 (sum) を
// 計算する関数 calculateStatistics を定義し、呼び出して結果を出力しています。

// 戻り値 (-> (min: Int, max: Int, sum: Int))タプル (min, max, sum) を返す
// 各要素に 名前 (min, max, sum) が付いているので、後で名前でアクセスできる
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")


/*
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    // min と max を配列の最初の要素 (scores[0]) に設定
    // これにより、配列が空でない限り比較が正しく動作する
    // sum = 0 にしておく（後で合計を計算する）
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    // 配列 scores を順番にチェックß
    for score in scores {
        // score > max → max を更新
        // score < min → min を更新
        // 合計 sum に score を加算
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// 120
print(statistics.2)
// 120
*/


// 2025/02/02
// 関数はネストすることができます。ネストした関数は、外側の関数で定義された変数にアクセスすることができます。
// ネストした関数を使用することで、長くて複雑な関数を整理することができます。
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
// 15

// 関数は第一級オブジェクトです。つまり、関数は値として他の関数を戻り値にすることができます。
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)


// 引数に他の関数を受け取ることもできます。
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
// var numbers = [20, 19, 7, 12]
// hasAnyMatches(list: numbers, condition: lessThanTen)


// 2025/02/03
// 関数はクロージャの特殊なケースです。
// クロージャは、後で実行される可能性があるコードブロックのことを指します。
// クロージャ内のコードは、そのクロージャが作成されたスコープで利用可能な変数や関数へアクセスすることができます。
// これは、実際に実行されるのが別のスコープ(タイミング)の場合でも当てはまります。
// 上記のネストした関数の例でも同じことが見られます。
// 中括弧({})で囲むことで、名前なしのクロージャを作成することもできます。
// in を使用することで、コードの本文から引数と戻り値を分離することができます。

// map は、配列の各要素に対して同じ処理を実行し、その結果から新しい配列を生成する関数です。
// var numbers = [20, 19, 7, 12]

/*
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
*/
 
// より簡潔にクロージャを書く複数の方法があります。
// クロージャの型が既にわかっている場合(デリゲートのコールバックなど)、
// パラメータと戻り値の型を省略できます。
// 単一の文のみのクロージャの場合、その文の値が戻り値として暗黙的に返されます。

// { number in 3 * number } はクロージャ（無名関数）の記述です。
// var numbers = [20, 19, 7, 12]

/*
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
// [60, 57, 21, 36]
*/
 
// 番号でパラメータを参照できます。
// このアプローチは、非常に短いクロージャで特に役立ちます。
// 関数の最後の引数として渡されたクロージャは、丸括弧の直後に記述できます。
// クロージャが関数の唯一の引数の場合は、丸括弧を完全に省略できます。

// クロージャ { $0 > $1 }
var numbers = [20, 19, 7, 12]

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
// [20, 19, 12, 7]



// 2025/02/04
// 下記はSwiftTourにしては分かりやすい
// ■オブジェクトととクラス(Objects and Classes)
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

// このバージョンのShapeクラスは重要なことが抜けています。
// それは、インスタンスを生成するときにクラスを構築するためのイニシャライザです。
// init を使ってイニシャライザを作成します。
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()


// 単純に保持するプロパティ以外に、プロパティが get と set を持つこともできます
// クラスのイニシャライザは 3 つの異なるステップがあります
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        // サブクラスで宣言されたプロパティに値を設定します
        self.sideLength = sideLength
        // スーパークラスのイニシャライザを呼びます
        super.init(name: name)
        // スーパークラスで定義されたプロパティの値を変更
        // この時点で get や set やメソッドを使用して他のセットアップ処理を実行できます
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            // 代入された新しい値はデフォルトで newValue という名前で利用できます
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
// 9.3
triangle.perimeter = 9.9
print(triangle.sideLength)
// 3.3000000000000003
