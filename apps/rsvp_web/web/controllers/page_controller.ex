defmodule RsvpWeb.PageController do
  use RsvpWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
