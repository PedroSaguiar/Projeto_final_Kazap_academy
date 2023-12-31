module Addressable
  # Essa parte é responsavel por validar o endereço
  def validate_address
    puts 'Logradouro não enviado' unless address[:public_area]
    puts 'Número não enviado' unless address[:number]
    puts 'Bairro não enviado' unless address[:district]
    puts 'Cidade não enviado' unless address[:city]
    puts 'UF não enviado' unless address[:federal_state]
    puts 'CEP não enviado' unless address[:zipcode]
  end
  # Essa parte mostra o endereço todo
  def full_address
    "#{public_area}, #{number}, #{district} - #{zipcode} - #{city}/#{federal_state}"
  end
  # Essa daqui coleta as informações do endereço
  def public_area
    address[:public_area]
  end

  def number
    address[:number]
  end

  def district
    address[:district]
  end

  def city
    address[:city]
  end

  def federal_state
    address[:federal_state]
  end

  def zipcode
    address[:zipcode]
  end
end