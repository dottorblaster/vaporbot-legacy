defmodule Vaporbot.Controllers.Vapor do
    use Sugar.Controller

    def root(conn, _args) do
        conn |> json(%{message: "ok"})
    end

    def webhook(conn, []) do
        conn |> json(%{message: Handler.parse(conn.params["payload"])})
    end
end