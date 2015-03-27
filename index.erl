-module(index).

data(_) ->
    #{
      title       => "The Timeless Way of Building Erlang Apps: In Search of a Useful Pattern Language",
      description => "A presentation by Garrett Smith at Erlang Factory, "
                     "San Francisco on Mar 27, 2015",
      where       => "San Francisco, USA",
      date        => "Mar 27, 2015",
      author      => "Garrett Smith",
      twitter     => "gar1t",
      blog        => "http://gar1t.com",

      transition  => "fade",
      theme       => "night",

      slides      => {apply, fun slides/1, {markdown, "slides.md"}}
     }.

slides(Markdown) ->
    format_slides(lpad_markdown:to_html(Markdown)).

format_slides(HTML) ->
    [buildout_list_items(Slide) || Slide <- split_slides(HTML)].

split_slides(HTML) ->
    re:split(HTML, "<hr />").

buildout_list_items(HTML) ->
    iolist_to_binary(
      re:replace(HTML, "<li>", "<li class=\"fragment\">", [global])).

site(_) ->
    #{
      "presentation/index.html" => {template, "templates/index.html"},
      "presentation"            => {dir,      "static"}
     }.
    
