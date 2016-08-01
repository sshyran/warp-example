module Example::Web::View

  # View class
  class Example < Warp::View
     include Example::Web::View::Common

     def initialize
       layout("Test") do
         div("Hello world")
       end
     end

  end
end
