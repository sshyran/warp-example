module Example::Web::Controller
  class Example < Warp::Controller

    # Routes
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    def routes
      # GET /test
      # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      get do
        if !json?
          render View::Example.new
        else
          json({"hello" => "world"})
        end
      end

    end
  end
end
