defmodule ElixirBlog.HelloController do
  use ElixirBlog.Web, :controller

  def index(conn, %{"message" => message}) do
    render conn, "index.html", message: message
  end
end
