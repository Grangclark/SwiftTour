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
