##require 'calabash-android/operations'
class TrianguloPage < Calabash::ABase

  #include Calabash::Cucumber::Operations

  def conteudo_app
    "* id:'content'"
  end

  def txtLado3
    "* id:'txtLado3'"
  end

  def txtLado2
    "* id:'txtLado2'"
  end

  def txtLado1
    "* id:'txtLado1'"
  end

  def botaoCalcular
    "* id:'btnCalcular'"
  end

  def txtResultado
    "* id:'txtResultado'"
  end

  ################################## ACTIONS ################################

  def check_conteudo
    check_element_exists(conteudo_app)
  end

  def clicar_campo(value)
    sleep 2
    touch(value)
  end

  def input_field(text)
    sleep 1
    keyboard_enter_text(text)
    sleep 1
    hide_soft_keyboard
  end

  def input_lado1(value1)
    case value1
    when 'valor1'
      campo1 = get_input_data("valor1")
    when 'valor2'
      campo1 = get_input_data("valor2")
    when 'valor3'
      campo1 = get_input_data("valor3")
    else
      puts "Não tem valor"
    end
    input_field(campo1)
  end

  def input_lado2(value2)
    case value2
    when 'valor1'
      campo2 = get_input_data("valor1")
    when 'valor2'
      campo2 = get_input_data("valor2")
    when 'valor3'
      campo2 = get_input_data("valor3")
    else
      puts "Não tem valor"
    end
    input_field(campo2)
  end

  def input_lado3(value3)
    case value3
    when 'valor1'
      campo3 = get_input_data("valor1")
    when 'valor2'
      campo3 = get_input_data("valor2")
    when 'valor3'
      campo3 = get_input_data("valor3")
    else
      puts "Não tem valor"
    end
    input_field(campo3)
  end

  def click_calcular_button
    touch(botaoCalcular)
  end


  ################################## ASSERTS ################################

  def assert_message
    return  element_exists(txtResultado)
    
  end

  def assert_message_isósceles
    if element_exists(txtResultado && text="O triângulo é Isósceles")
      return true
    else
      return false
    end
  end

  def assert_message_escaleno
    if element_exists(txtResultado && text="O triângulo é Escaleno")
      return true
    else
      return false
    end
  end
end
