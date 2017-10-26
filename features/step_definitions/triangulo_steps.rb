########################################### GIVEN ########################################
Given(/^I am on triangulo app$/) do
  sleep 1
  @triangulo.conteudo_app
end


########################################### WHEN ########################################
When(/^I input the values (.+), (.+) e (.+)$/) do |int, int2, int3|
  @triangulo.clicar_campo(@triangulo.txtLado1)
  @triangulo.input_lado1(int)
  @triangulo.clicar_campo(@triangulo.txtLado2)
  @triangulo.input_lado2(int2)
  @triangulo.clicar_campo(@triangulo.txtLado3)
  @triangulo.input_lado3(int3)
  @triangulo.click_calcular_button
end

########################################### THEN ########################################
Then(/^I see a message informing which triangulo is$/) do
  expect(@triangulo.assert_message).to be true
end
