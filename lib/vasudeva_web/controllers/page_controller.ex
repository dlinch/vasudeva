defmodule VasudevaWeb.PageController do
  use VasudevaWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
