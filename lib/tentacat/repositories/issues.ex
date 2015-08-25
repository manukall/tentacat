defmodule Tentacat.Repositories.Issues do
  import Tentacat
  alias Tentacat.Client

  @doc """
  List issues

  ## Example

  Tentacat.Repositories.Issues.list "elixir-lang", "elixir", %{labels: "help wanted"}
  Tentacat.Repositories.Issues.list "elixir-lang", "elixir", %{}, client

  More info at: https://developer.github.com/v3/issues/#list-issues-for-a-repository
  """
  @spec list(binary, binary, Map.t, Client.t) :: Tentacat.response
  def list(owner, repo, options \\ %{}, client \\ %Client{}) do
    get "repos/#{owner}/#{repo}/issues", client, options
  end

  @doc """
  Get issue

  ## Example

  Tentacat.Repositories.Issues.find "elixir-lang", "elixir", 123
  Tentacat.Repositories.Issues.find "elixir-lang", "elixir", 123, client

  More info at: https://developer.github.com/v3/issues/#get-a-single-issue
  """
  @spec find(binary, binary, integer, Client.t) :: Tentacat.response
  def find(owner, repo, number, client \\ %Client{}) do
    get "repos/#{owner}/#{repo}/issues/#{number}", client
  end
end
