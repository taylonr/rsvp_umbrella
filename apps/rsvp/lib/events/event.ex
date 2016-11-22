defmodule Rsvp.Events do
    use Ecto.Schema

    schema "events" do
        field :title, :string
        field :location, :string
        field :date, Ecto.DateTime

        timestamps
    end
end