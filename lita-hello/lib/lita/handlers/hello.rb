module Lita
  module Handlers
    class Hello < Handler
      route /^hi/, :greeting

      def greeting(response)
        response.reply("hello there!")
      end

      Lita.register_handler(self)
    end
  end
end
