defmodule RsvpWeb.EventController do
    use RsvpWeb.Web, :controller

    def show(conn, params) do
        event = Rsvp.EventQueries.get_by_id(params["id"])
        render conn, "details.html", event: event
    end
end