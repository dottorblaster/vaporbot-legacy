defmodule Vaporbot.Controllers.Vapor do
    use Sugar.Controller

    def root(conn, _args) do
        conn |> json(%{message: "ok"})
    end

    def vaporfont(conn, []) do
        conn |> json(%{message: Handler.parse(conn.params["payload"])})
    end

    def webhook(conn, []) do
        if conn.params["inline_query"] != nil do
            article = %Nadia.Model.InlineQueryResult.Article{}

            %{"id" => id, "query" => query} = conn.params["inline_query"]
            vaporizedText = Handler.parse(query)
            IO.puts("Query: #{inspect query}")

            Nadia.answer_inline_query(id, [%{ article | title: vaporizedText,
                id: "1",
                description: vaporizedText,
                input_message_content: %{ message_text: vaporizedText }
            }])
        end

        conn |> json(%{status: true})
    end
end