module Lita
  module Handlers
    class Hello < Handler
      route /^hi/, :greeting

      Lita.register_handler(self)
    end
  end
end
