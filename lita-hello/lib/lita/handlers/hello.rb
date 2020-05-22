module Lita
  module Handlers
    class Hello < Handler
      # insert handler code here

      Lita.register_handler(self)
    end
  end
end
