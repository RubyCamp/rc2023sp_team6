require 'dxruby'




Window.width = 800
Window.height = 600
Window.caption = "RubyCamp 2023SP Sample Game"



Window.loop do
	break if Input.key_push?(K_ESCAPE) # ESCキー押下でメインループを抜ける
end