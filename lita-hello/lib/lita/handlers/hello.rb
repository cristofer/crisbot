module Lita
  module Handlers
    class Hello < Handler
      route /(^.*?)/, :unknown
      route /^hi/, :greeting

      def greeting(response)
        response.reply("hello there!")
      end

      def unknown(response)
        response.reply("Sorry, I do not know that")
      end

      Lita.register_handler(self)
    end
  end
end
