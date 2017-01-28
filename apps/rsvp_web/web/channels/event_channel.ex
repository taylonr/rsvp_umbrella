defmodule RsvpWeb.EventChannel do
    use Phoenix.Channel

    def join("event:" <> event_id, _message, socket) when event_id <= 0 do
        {:ok, %{reason: "Invalid event id"}}
    end

    def join("event:" <> event_id, _message, socket) do
        {:ok, socket}
    end

    def send_update(event) do
        payload = %{
            "quantity" => event.quantity_available
        }

        RsvpWeb.Endpoint.broadcast("event:#{event.id}", "update_quantity", payload)
    end
end