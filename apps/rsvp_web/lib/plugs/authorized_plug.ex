defmodule RsvpWeb.AuthorizedPlug do
    import Plug.Conn
    import Phoenix.Controller

    def init(options) do
        options
    end

    def call(conn, name) do
        user_name = conn.cookies["user_name"]
        authorize_user(conn, user_name, name)
    end

    defp authorize_user(conn, nil, _) do
        conn
        |> redirect(to: "/login")
        |> halt
    end

    defp authorize_user(conn, user_name, name) when user_name === name do
        conn
    end

    defp authorize_user(conn,_,_), do: authorize_user(conn, nil, nil)
end