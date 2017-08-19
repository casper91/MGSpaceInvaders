module MG
  class GameScene < Scene
    def initialize
      label = Text.new("Hello World", "Arial", 96)
      label.anchor_point = [0, 0]
      add label
    end
  end
end