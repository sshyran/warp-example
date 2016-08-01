module Example::Web::View::Common
  def layout(page_title = "...", &block )
    @content << "<!DOCTYPE HTML>"
    html do
      head do
        title(page_title)
        script({"src" => "/app.min.js", "data-turbolinks-eval" => "false"}, "")
        link({"rel" => "stylesheet", "type" => "text/css", "href" => "/style.min.css"}, "")
        # link({"rel" => "stylesheet", "type" => "text/css", "href" => "/public/css/font-awesome.min.css"}, "")
      end

      body do
        div do
          yield
        end
      end

    end
  end

end
