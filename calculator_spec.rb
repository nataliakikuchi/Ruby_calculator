require './calculator'

# TESTES DE UNIDADE
RSpec.describe Calculator do
  context 'when calculating one of the four basic mathematics operations' do
    it 'calculates sum' do
      subject = described_class.new

      result = subject.sum(2, 2)

      expect(result).to eq 4
    end

    it 'calculates subtraction' do
      subject = described_class.new

      result = subject.subtraction(2, 2)

      expect(result).to eq 0
    end

    it 'calculates multiplication' do
      subject = described_class.new

      result = subject.multiplication(2, 8)

      expect(result).to eq 16
    end

    it 'calculates division' do
      subject = described_class.new

      result = subject.division(32, 8)

      expect(result).to eq 4
    end

    it 'returns an error when calculates division by zero' do
      subject = described_class.new

      result = subject.division(2, 0)

      expect(result).to eq 'Não é possível fazer divisão por zero.'
    end
  end

  it 'returns an error when the operator is invalid' do
    subject = described_class.new

    result = subject.calculate('#', 32, 8)

    expect(result).to eq 'O operador digitado é inválido.'
  end
end
