## How to use

### at_coderにログイン
```
$ acc login
$ oj login https://atcoder.jp/
```

### コンテンストに参加する時
```
$ acc new contest_name(e.g. abc101: "abc101"はatcoder.jp/contests/以下のpath)
```

### 問題を追加する時
```
$ acc add
```

### テスト回す(Ruby)
```
$ oj t -c " ruby ./file_name" -d ./tests/
```

### 回答を提出する
```
$ acc s file_name
```

## よく使う実装まとめ

### 数字の入力
```
n = gets.chop.to_i
```

### スペース区切り入力
n, m = gets.chop.split.map(&:to_i)

### 縦に並んだ入力
n.times {A = gets.chop.split.map(&:to_i)}

### 配列の和
a = a.inject(:+)

[参考](https://koh-eng.com/atcoder-ruby/)
