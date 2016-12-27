# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Comment.create(content:"生徒の質問")
#Comment.create(content:"生徒の回答")
#Comment.create(content:"教授の補足")の順になっています。
Comment.create(content: "計算機工学の第２回についての質問です。
コンピュータは０と１の世界なので、10進数の代わりに２進数が用いられているのは分かるのですが、8進数と16進数はどのようにコンピュータに活かされているのでしょうか？
使われているということは、何かメリットがあるのでしょうか？")
Comment.create(content: "人間にとって10進数は使いやすいけれど、コンピュータにとっては2進数が最もなじみのある表現だということは講義で習ったと思います。
しかし、2進数は桁がすぐに変わってしまい、人間からすると非常に使いにくいです。16進数や8進数は、桁がすぐには上がらないので記述がしやすいから使われているのだそうです。
参考文献：すぐにすごく分かるコンピュータ！（九工太郎・著／マラソン出版）")
Comment.create(content:"先ほどの回答でも十分なのですが、実は8進数は16進数ほど用いられていません。これはなぜかというのを補足として回答しますね。
8進数で書いても16進数はあくまで人間がコンピュータに歩み寄って考えたときに使いやすい表現なのであって、コンピュータではどんな表現も結局すべて2進数に変換されます。
ここで、8進数と16進数を2進数に変換したときを考えてみましょう。
16進数は１桁で0～15を表現できます。これを2進数に変換すると4桁の数になります。
一方、8進数は1桁で0～7を表現できるので、これを2進数に変換すると3桁の数になります。
人間は、端数がある数よりも10で割り切れる数のほうが扱いやすいですよね。コンピュータも同じで、2っで割れる数のほうが扱いやすい。なので、2進数で直すと3桁になってしまう8進数より、16進数のほうが用いられているということです。")


Comment.create(content:"XOR回路が半加算器で使われているというのがいまいちイメージできません。
身の周りでXORが使われていたら、それも交えて説明してくださいませんか？")
Comment.create(content:"XORの真理値表は配布されたプリントでもあったように、0と1の2種類の入力が来たら1を返すというものでした。
これを2進数で考えてみるとわかりやすいと思います。0+0=0だし、1+1=0(桁あふれ)ですが、1+0=1です。これを用いれば2進数の足し算に使うことができると思います。")
Comment.create(content:"再来週の講義で全加算回路をやるので、そのときに改めて理解が進むと思います。
そこでも分からないということがありましたら、またここに質問でしてください。その際に詳しく説明したいと思います。")


Comment.create(content:"組み合わせ回路と順序回路の違いがいまいちわかりません。どなたかお願いします！＞＜")
Comment.create(content:"組み合わせ回路には時間が関係ありませんが、順序回路には時間が関係してきます。
よって、組み合わせ回路には入力データがそのまま反映されまうが、順序回路はCLKの立ち上がり、立下りによって過去の入力内容がそのまま保持されることもあります")
Comment.create(content:"この説明でだいたい合っています。違いを理解するにはタイミングチャートを書いてみるのがいいと思います。プリントにそれぞれ書いてありますので比較してみてください。順序回路については次の講義で詳しく説明しますので、それでわからないことがあれば、またここに質問してください。")


Comment.create(content:"先生の説明で「反転と聞いたらXOR」とあったのですが、もう少し詳しく教えていただきたいです。")
Comment.create(content:"これについては私が説明したほうがいいと思われますので回答します。
反転と聞いたらXORについて、少し説明が足りませんでしたね。ごめんなさい。
何を反転するかというと、ビットを反転させます。
XORとは両方のビットが異なるときに１を返す論理演算でしたね。
よって、特定のビットを反転させたいときは、反転したい桁を１にしてXORしてあげれば、反転できるわけです。
例10101010の下位4桁を反転させたいときは00001111でXORしてあげる。実際に計算してみてください。理解が深まると思います。")


Comment.create(content:"1の補数表現と2の補数表現はどのような経緯で生まれたのでしょうか？
計算方法はおそらく大丈夫です。")
Comment.create(content:"2進数で負の数を表現するためだと思います。")
Comment.create(content:"突き詰めていけば上の回答に落ち着くのですが、もう少し詳しく補足しますね。
まず、2進数での加算は簡単な話ですね。減算を行うときに加算の処理で計算ができればとてもコストパフォーマンスがいいです。このために考えられたのが2の補数表現です。実際の計算の例はプリントに書いてありますので、それを参照してください。
ちなみに、1の補数表現は使い勝手が悪いので、今ではあまり使われていません。")


Comment.create(content:"解糖系とTCAサイクルの説明がいまいち理解できませんでした。
この二つはまったく別物なのですか？それともつながっているのですか？
どなたか説明お願いします(T_T)")
Comment.create(content:"本質をいうと、食事などで得たグルコースを材料にして、エネルギー(ATP)を作ることになります。
解糖系はグルコース（ブドウ糖）をピルビン酸（C3H4O3)にまで分解する化学反応です。細胞質基質で行われて、材料であるグルコース1molにつき2molのATPが合成されます。ここまでで酸素が不要なのは、教科書p214の化学式で酸素が使われていないことから分かります。
クエン酸回路は、解糖系でできたピルビン酸を分解して、水素と二酸化炭素にする化学反応です。ミトコンドリアのマトリックスで行われます。これで2molのATPが合成されます。水素はミトコンドリア内の電子伝達系（水素伝達系）で酸素と結合し酸化され水となり発生したエネルギーは34ATPを合成します。これには酸素が必要です。")
Comment.create(content:"上記の回答で合っています。補足しておくと、グルコースからどうエネルギーが出ているのかというと、分解されたときに不要となったグルコースの結合エネルギーです。クエン酸回路は反応の一連を覚えるのが大切になります。冬休み明けのテストに出ることになっているので、しっかり勉強しておいてください。")


Channel.create(name:"計算機工学",teacher:"井倉太郎",slide:"http://www.slideshare.net/swkagami/presentations")
Channel.create(name:"基礎生物学",teacher:"若芽花子",slide:"http://www.slideshare.net/NobuyukiTakahashi2/1130408")
Channel.create(name:"応用数学",teacher:"帆立一郎",slide:"http://www.slideshare.net/akiraasano/2016-2016-9-29-66460943")
Channel.create(name:"信号処理",teacher:"浅利純二",slide:"http://www.slideshare.net/ShogoMuramatsu/ss-49305216?qid=baf12e45-9044-4fd8-9738-9be00abfd553&v=&b=&from_search=1")
Channel.create(name:"情報セキュリティ論",teacher:"鈴木次郎",slide:"http://www.slideshare.net/RuoAndo/i-18871321")
Channel.create(name:"産業組織論A",teacher:"浜地真",slide:"http://www.slideshare.net/ShogoMuramatsu/ss-49305216?qid=baf12e45-9044-4fd8-9738-9be00abfd553&v=&b=&from_search=1")
Channel.create(name:"経営学",teacher:"田中勝男",slide:"http://www.slideshare.net/yasushihara/a-2014-0507-34350861")
Channel.create(name:"画像処理",teacher:"平目百合子",slide:"http://www.slideshare.net/akiraasano/2016-2016-9-29")
Channel.create(name:"統計学",teacher:"佐藤岩志",slide:"http://www.slideshare.net/akiraasano/ss-26727255")
Channel.create(name:"オペレーティングシステム",teacher:"多古英夫",slide:"http://www.slideshare.net/RuoAndo/ss-18871639")
