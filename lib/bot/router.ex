defmodule Vaporbot.Router do
    use Sugar.Router
    alias Vaporbot.Controllers.Vapor

    get "/", Vapor, :root
    post "/webhook", Vapor, :webhook
end