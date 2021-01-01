defmodule ExMonApi.Trainer.Create do
  alias ExMonApi.{Repo, Trainer}
  def call(params) do
    params
    |> Trainer.build()
    |> create()
  end

  defp create({:ok, struct}), do: Repo.insert(struct)
  defp create({:error, _changeset} = error), do: error
end
