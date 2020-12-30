defmodule ExMonApiWeb.WelcomeController do
  use ExMonApiWeb, :controller

  def index(connection, _params) do
    text(connection, "Welcome to the ExMon API")
  end

end
