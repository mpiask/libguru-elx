defmodule Libguru.RepositoryTest do
  use Libguru.ModelCase

  alias Libguru.Repository

  @valid_attrs %{github_id: 42, name: "some name", url: "some url"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Repository.changeset(%Repository{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Repository.changeset(%Repository{}, @invalid_attrs)
    refute changeset.valid?
  end
end
