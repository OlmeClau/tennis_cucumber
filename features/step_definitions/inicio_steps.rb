Given(/^estoy en la pagina principal$/) do
  visit '/'
end

When(/^ingreso "(.*?)" en el campo "(.*?)"$/) do |valor, campo|
  fill_in(campo, :with => valor)
end

When(/^presiono el boton "(.*?)"$/) do |nombre_boton|
  click_button(nombre_boton)
end

Then(/^deberia ver "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end