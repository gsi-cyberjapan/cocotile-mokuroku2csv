cocotile-mokuroku2csv
=====================

ココタイル作成用の目録データからココタイルデータの原型となるCSVデータを作成する

実行方法
========
Hadoop 及び Ruby がインストールされた環境に reduce.rb をダウンロードし、
input ディレクトリを作成。input ディレクトリにココタイル作成用目録データ
（ gsi-cyberjapan/cocotile-mkmokuroku ）をコピーした上で、
次のコマンドにより hadoop streaming を使って
ココタイルデータの原型となるCSVデータを作成する。

```sh
hadoop jar /(somewhere)/hadoop-streaming-2.5.1.jar -input input -output output -mapper cat -reducer reduce.rb
```

CSVデータがoutputディレクトリに出力されるので、これを
ココタイルデータを展開するサーバにコピーし、
ココタイルデータの原型となるCSVデータからココタイルデータを
展開するスクリプト（ gsi-cyberjapan/csv2cocotile ）を使って
ココタイルデータへの展開を行う。

※平成２７年１月６日に使用したものを共有しています。
