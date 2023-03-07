require 'dxruby'

require_relative 'image_manager'
require_relative 'clicked_anim'

# 依存するファイル群を一括でrequireする
Dir.glob("directors/*.rb") {|path| require_relative path }
Dir.glob("map_chips/*.rb") {|path| require_relative path }

require_relative 'map'

Window.width = 800
Window.height = 600
Window.caption = "RubyCamp 2023SP Sample Game"

# ゲーム開始時点で実行する最初のシーンディレクターを生成
current_director = Directors::Title.new

Window.loop do
	current_director = current_director.play
	break if Input.key_push?(K_ESCAPE) # ESCキー押下でメインループを抜ける
end