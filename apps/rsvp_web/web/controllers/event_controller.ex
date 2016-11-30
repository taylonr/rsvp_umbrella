defmodule RsvpWeb.EventController do
    use RsvpWeb.Web, :controller

    def show(conn, params) do
        render conn, "details.html", event: "Events #{params["id"]}"
    end
end