    require 'gosu'
 
    class GameWindow < Gosu::Window
      def initialize
        super 640, 480, false
        self.caption = "Gosu Tutorial Game"
      end
      
      def update
        # game logic goes here
      end
      
      def draw
        # render logic goes here
      end

      def button_down button_id
        # called when button is pressed
      end
    end
 
    window = GameWindow.new
    window.show