# Crie uma lista de pessoas utilizando array. Cada pessoa deve possuir os atribuitos
# de nome e e-mail. Algumas das pessoas podem ser funcionários, quando for o caso
# devem armazenar tb o cargo que ocupam.
# Sendo assim, seu script deve armazenar uma lista mista de 10 pessoas,
# sendo 3 delas funcionários. Ao percorrer a lista vc deverá chamar um
# método full_informations ao qual deve montar uma string com todos os dados.

pessoas = [
  { nome: "Ana Silva", email: "ana.silva@example.com" },
  { nome: "Bruno Oliveira", email: "bruno.oliveira@example.com" },
  { nome: "Carlos Pereira", email: "carlos.pereira@example.com" },
  { nome: "Daniela Souza", email: "daniela.souza@example.com" },
  { nome: "Eduardo Ramos", email: "eduardo.ramos@example.com" },
  { nome: "Fernanda Lima", email: "fernanda.lima@example.com" },
  { nome: "Gabriela Castro", email: "gabriela.castro@example.com" },
  { nome: "Hélio Martins", email: "helio.martins@example.com", cargo: "Gerente" },
  { nome: "Isabela Ferreira", email: "isabela.ferreira@example.com", cargo: "Desenvolvedora" },
  { nome: "João Almeida", email: "joao.almeida@example.com", cargo: "Analista" }
]

# Define o método full_informations
def full_informations(pessoa)
  info = "Nome: #{pessoa[:nome]}, Email: #{pessoa[:email]}"
  info += ", Cargo: #{pessoa[:cargo]}" if pessoa[:cargo]
  info
end

# Percorre o array e exibe as informações completas de cada pessoa
pessoas.each do |pessoa|
  puts full_informations(pessoa)
end
