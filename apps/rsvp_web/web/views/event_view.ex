defmodule RsvpWeb.EventView do
    use RsvpWeb.Web, :view

    def format_date(date) do
        {{y, m, d}, _} = Ecto.DateTime.to_erl(date)
        "#{m}/#{d}/#{y}"
    end

    def format_time(date) do
        Ecto.DateTime.to_time(date)
        |> Ecto.Time.to_string
    end
end