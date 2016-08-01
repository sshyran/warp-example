module Warp::Web::View

  # View class
  class Error < Warp::View
    include Example::Web::View::Common

    def initialize(@code = 404, @message : String | Nil = "")
      layout("Error") do
        div(@code)
        if message = @message
          div(message)
        end
      end
    end

  end

end
