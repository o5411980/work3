require 'cgi' #データを受け取り、返却するCGIプログラムを起動
cgi = CGI.new
#データを受け取った後、HTML形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8"){
#受け取ったデータcgi['goya']で取り出し、ローカル変数に代入
#目印の'goya'から情報を取り出す
get = cgi['goya_false']
#HTMLでレスポンスを返却
"<html>
  <body>
    <p>品質が悪いものの情報は下記になります。</p>
    <p>文字列：#{get}</p>
  </body>
 </html>"
}
