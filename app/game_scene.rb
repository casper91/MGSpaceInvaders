module MG
  class GameScene < Scene
    PI_HALF = Math::PI / 2

    def initialize

      @ship = MG::Sprite.new('square.png').tap do |ship|
        ship.position = [350, 150]

        add(ship)
      end

      on_touch_begin { |event| @swipe_gesture = false ; true }
      on_touch_move { |event| @swipe_gesture = true }
      on_touch_end { |event| touch_handler(event) }
    end

    def touch_handler(event)
      if @swipe_gesture
        start_location = event.start_location
        end_location = event.location

        angle_rad = (end_location - start_location).angle
        delta = rand(1.0..2.0)


        if(-PI_HALF <= angle_rad && angle_rad <= PI_HALF)
          # Right swipe
          delta_x = [@ship.position.x + (50 * delta), 675].min
          @ship.move_to([delta_x, 150], 0.2)
        else
          # Left swipe
          delta_x = [@ship.position.x + (-50 * delta), 25].max
          @ship.move_to([delta_x, 150], 0.2)
        end
      else
        puts "Tap!"
      end
    end
  end
end