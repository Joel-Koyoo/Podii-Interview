defmodule Blogger do
  @moduledoc """
    Provides functions for working with blog posts.
  """

  use HTTPoison.Base
@doc """
  Fetches a blog post from the given URL using HTTPoison.
  """
  def fetch_blog(url \\ "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91") do
    case HTTPoison.get(url) do
      {:ok, response} -> response
      {:error, error} -> {:error, "HTTPoison error: #{inspect(error)}"}
    end
  end


  @doc """
  Converts a list of strings to uppercase using Enum.map.
  """
  def to_upper_case(strings) do
    Enum.map(strings, &String.upcase/1)
  end
end
