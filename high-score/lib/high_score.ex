defmodule HighScore do
  @reset_score 0
  def new(), do: %{}

  def add_player(scores, name, score \\  @reset_score),  do: Map.put_new(scores,name, score)

  def remove_player(scores, name), do: scores |> Map.delete(name)

  def reset_score(scores, name), do: scores |> Map.put(name, @reset_score)

  def update_score(scores, name, score) do
      # Map.update(scores, name, score, &(&1 + score))
      Map.update(scores, name, score, & &1 + score)
  end

  def get_players(scores), do: Map.keys(scores)
end
