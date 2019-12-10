defmodule Friends.Person do

  @moduledoc """
  Documentation for People.
  """

  use Ecto.Schema

  schema "people" do
    field :first_name, :string
    field :last_name, :string
    field :age, :integer
  end

  def changeset(person, params \\ %{}) do
    person
    |> Ecto.Changeset.cast(params, [:first_name, :last_name, :age])
    |> Ecto.Changeset.validate_required([:first_name, :last_name])
  end

  def add_person(new_person) do
    case Friends.Repo.insert(new_person) do
      {:ok, person} ->
        inspect "Person added successfully"
        inspect person
      {:error, changeset} ->
        inspect "Unable to add person"
        inspect changeset.errors
    end
  end
end