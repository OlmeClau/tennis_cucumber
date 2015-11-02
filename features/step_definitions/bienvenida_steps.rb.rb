When(/^ingreso a la pagina principal$/) do
  visit '/'
end

Then(/^deberia ver el mensaje "(.*?)"$/) do |mensaje|
  expect(last_response.body).to match(/#{mensaje}/m)
end
