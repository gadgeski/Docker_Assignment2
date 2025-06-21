目的：今後環境構築を早急に行う上での基本技術の習得&Python の習熟
使用技術： Python/Docker

Docker と Python のコードについて説明します。これは、Python アプリケーションを Docker コンテナ内で実行するための基本的なセットアップです。

<h1>Dockerfile について</h1>
Dockerfile は、Docker イメージを構築するための指示を記述したテキストファイルです。料理のレシピのようなものだと考えてください。このレシピを使って、アプリケーションを実行するために必要なすべてのものが詰まった「箱」（Docker イメージ）を作ります。
この Dockerfile は以下のことを行っています。

- FROM python:3.9-slim-buster: これは、Python 3.9 がインストールされた軽量な Linux ベースのイメージ（親イメージ）を使用することを指定しています。これにより、Python を自分でインストールする必要がなくなります。
- WORKDIR /app: コンテナ内で作業ディレクトリを/app に設定します。これ以降のコマンドは、このディレクトリを基準に実行されます。
- COPY . /app: ホストマシン（あなたのコンピュータ）の現在のディレクトリにあるすべてのファイル（main.py など）を、コンテナ内の/app ディレクトリにコピーします。
- CMD ["python", "main.py"]: これは、コンテナが起動したときに実行されるコマンドを指定します。この場合、main.py スクリプトを Python インタープリタで実行します。

<h1>main.py について</h1>
  main.py は、ごくシンプルな Python スクリプトです。
- name = "Python": name という変数に文字列「Python」を代入しています。
- version = 3.9: version という変数に数値「3.9」を代入しています。
- is_awesome = True: is_awesome という変数に真偽値（True/False）の「True」を代入しています。
- print(f"言語名: {name}, バージョン: {version}, 素晴らしい？: {is_awesome}"): これは f-string と呼ばれる機能を使って、定義した変数の中身を文字列の中に埋め込んで出力しています。
- print(type(name), type(version), type(is_awesome)): それぞれの変数のデータ型を出力しています。Python では、変数に代入された値によって自動的に型が決定されます。この場合、それぞれ str（文字列）、float（浮動小数点数）、bool（真偽値）と表示されます。

  <h3>【まとめ】</h3>
  この 2 つのファイルは連携して動作します。

- Dockerfile を使って、main.py を実行できる Docker イメージを作成します。
- その Docker イメージからコンテナを起動すると、main.py が実行され、Python のバージョン情報と変数のデータ型が出力されます。
