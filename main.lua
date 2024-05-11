AddEventHandler('__cfx_internal:httpResponse', function(token, status, body, headers, errorData)
  print('[HTTP] -> You cant see me anymore', status, body)
end)

Citizen.CreateThreadNow(function()
  i = 0
  while (i < 45) do
    i = i + 1
    RemoveEventHandler({
      key = i,
      name = '__cfx_internal:httpResponse'
    })
  end
end)
