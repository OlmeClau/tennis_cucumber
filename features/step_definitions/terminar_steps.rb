Then(/^botones anotar deberian estar desabilititados$/) do
  expect(last_response.body).to have_selector('input', :id =>"btnJugador1", :disabled => 'disabled')
  expect(last_response.body).to have_selector('input', :id =>"btnJugador2", :disabled => 'disabled')
end