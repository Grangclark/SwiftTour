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

var greeting = "Hello, playground"

// "Hello world!"
print("Hello World!")
print("My Name Kazutoshi!")

// シンプルな値(Simple Values)
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


// 20250126
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



