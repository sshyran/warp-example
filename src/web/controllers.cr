require "./controllers/*"

module Example::Web
  class Main < Warp::Controller
    def routes

      # GET /
      # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      get do
        # json({"hello" => "world"})
        redirect("/test/")
      end

      # Test routes
      # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      on "test" do
        mount Example::Web::Controller::Example
      end

    end
  end
end
