defmodule RsvpWeb.LoginController do
    use RsvpWeb.Web, :controller

    def index(conn, _) do
        render conn, "login.html"
    end

    def login(conn, %{"login" => %{"username" => name}}) do
        expiration = 60*60*24*7

        conn
        |> Plug.Conn.put_resp_cookie("user_name", name, max_age: expiration)
        |> redirect(to: "/")
    end
end