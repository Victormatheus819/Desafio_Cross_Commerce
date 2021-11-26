defmodule DesafioCrossCommerceWeb.ETLView do
  
    def render("result.json",%{result: result}) do
      %{
        ord: result
      }
    end
  end    
  
    