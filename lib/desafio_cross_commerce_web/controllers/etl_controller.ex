defmodule DesafioCrossCommerceWeb.ETLController do
  use DesafioCrossCommerceWeb, :controller

  action_fallback DesafioCrossCommerceWeb.FallbackController

  
  
  def start(conn, params) do
    obj=extract(1,1,[])
    render(conn, "result.json" ,result: obj)
  end
  def extract(n,tama,array) when n < 1000 do
    
    case HTTPoison.get("http://challenge.dienekes.com.br/api/numbers?page=#{n}")do
      {:ok, %HTTPoison.Response{body: body}} ->
        req=Poison.decode!(body)
        if(req["numbers"] == nil)do
          extract(n,tama,array)
        end 
        array = array ++ req["numbers"]
        extract(n+1,tama,array) 
    end
  

end 
def extract(_n,_tama,array)  do  #caso base da extração
  result= ord(array)
  
end

def ord([]), do: []                                #caso base para o ord

def ord([sep|[]]), do: [sep]                   #caso base para o ord

def ord([sep|tail]) do                           # Separação da cabeça e cauda da lista
  nose = Enum.filter(tail, fn(n) -> n < sep  end) #separação  dos numeros a partir do filter
  tail_end = Enum.filter(tail, fn(n) -> n > sep  end)

ord(nose) ++ [sep] ++ ord(tail_end) 
end
  
end
