defmodule Handler do

    def glyph(letter) do
        case letter do
            "a" -> "ａ"
            "b" -> "ｂ"
            "c" -> "ｃ"
            "d" -> "ｄ"
            "e" -> "ｅ"
            "f" -> "ｆ"
            "g" -> "ｇ"
            "h" -> "ｈ"
            "i" -> "ｉ"
            "l" -> "ｌ"
            "m" -> "ｍ"
            "n" -> "ｎ"
            "o" -> "ｏ"
            "p" -> "ｐ"
            "q" -> "ｑ"
            "r" -> "ｒ"
            "s" -> "ｓ"
            "t" -> "ｔ"
            "u" -> "ｕ"
            "v" -> "ｖ"
            "w" -> "ｗ"
            "x" -> "ｘ"
            "y" -> "ｙ"
            "z" -> "ｚ"
            _ -> letter
        end
    end

    def parse(text) do
        String.codepoints(text)
        |> Enum.map(fn x -> glyph x end)
        |> Enum.join
    end

end