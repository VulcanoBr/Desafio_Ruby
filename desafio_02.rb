# Considerando o que aprendemos nesse módulo, crie um script contendo uma classe
# denominada ContaCorrente. Você deve receber um saldo inicial.
# Crie as ações básicas de sacar e depositar. Não deverá ser possível
# sacar quando o saldo for inferior ao valor solicitado.

class ContaCorrente
  def initialize(saldo_inicial)
    @saldo = saldo_inicial
  end

  attr_reader :saldo

  def sacar(valor)
    return puts "Sem Saldo para saque de #{valor}, seu saldo é #{@saldo}" if valor > @saldo

    @saldo -= valor
    puts "Saque de #{valor} realizado com sucesso !!!, seu saldo é #{@saldo}"
  end

  def depositar(valor)
    @saldo += valor
    puts "Deposito de #{valor} realizado com sucesso !!!, seu saldo é #{@saldo}"
  end
end

conta = ContaCorrente.new(1000)
puts "Saldo inicial de #{conta.saldo}"

conta.depositar(500)

conta.sacar(1000)
conta.sacar(1000)
conta.sacar(500)
