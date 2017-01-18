defmodule RsvpWeb.AuthorizedPlug do
    import Plug.Conn
    import Phoenix.Controller

    def init(options) do
        options
    end

    def call(conn, _) do
        user_name = conn.cookies["user_name"]
        authorize_user(conn, user_name)
    end

    defp authorize_user(conn, nil) do
        conn
        |> redirect(to: "/login")
        |> halt
    end

    defp authorize_user(conn, _) do
        conn
    end
end