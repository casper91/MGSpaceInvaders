module MG
  class GameScene < Scene

    def initialize
      on_touch_begin { |event| @swipe_gesture = false ; true }
      on_touch_move { |event| @swipe_gesture = true }
      on_touch_end { |event| touch_handler(event) }
    end

    def touch_handler(event)
      if @swipe_gesture
        puts "Swipe detected!"
      else
        puts "Tap!"
      end
    end
  end
end