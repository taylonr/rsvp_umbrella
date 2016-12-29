defmodule Rsvp.EventQueries do
    import Ecto.Query

    alias Rsvp.{Repo, Events}

    def any do
        Repo.one(from e in Events, select: count(e.id)) != 0
    end

    def get_all do
        Repo.all(from Events)
    end

    def get_all_for_location(location) do
        query = from e in Events,
                where: e.location == ^location

        Repo.all(query)
    end

    def get_by_id(id) do
        Repo.get(Events, id)
    end

    def create(event) do
        Repo.insert(event)
    end
end