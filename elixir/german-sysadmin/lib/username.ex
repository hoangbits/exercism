defmodule Username do
  # def sanitize(username \\ [])
  # def sanitize(username) when username == [], do: []
  # # using case below to handle underscore: ?_
  # # def sanitize([head | tail]) when head == 95 do
  # #   [head] ++ sanitize(tail)
  # # end
  # def sanitize([head | tail]) when head in ?a..?z do
  #   [head] ++ sanitize(tail)
  # end

  # def sanitize([head | tail]) when head not in ?a..?z do
  #   case head do
  #     # ä becomes ae
  #     ?ä -> 'ae' ++ sanitize(tail)
  #   # ö becomes oe
  #     ?ö -> 'oe' ++ sanitize(tail)
  #   # ü becomes ue
  #     ?ü -> 'ue' ++ sanitize(tail)
  #   # ß becomes ss
  #     ?ß -> 'ss' ++ sanitize(tail)
  #     ?_ -> '_' ++ sanitize(tail)
  #     _ -> [] ++ sanitize(tail)
  #   end

  # end
  # Improvement
  def sanitize(username) do
    Enum.reduce(username, '', fn character, acc ->
      acc ++ case character do
        ?ä -> 'ae'
        ?ö -> 'oe'
        ?ü -> 'ue'
        ?ß -> 'ss'
        ?_ -> '_'
        c when c in ?a..?z -> [c]
        _ -> ''
      end
    end)
  end


end
