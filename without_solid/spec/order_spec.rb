require_relative '../order'
require_relative '../product'

RSpec.describe Order do
  let(:order) { Order.new }

  context 'with products' do    
    let(:bmw) { Product.new('Carro', 'BMW', 54000) } # IPVA: 4% - 2160
    let(:fazer) { Product.new('Moto', 'Fazer 150', 15000) } # IPVA: 3% - 450
    let(:ranger) { Product.new('Caminhão', 'Mercedes', 180000) } # IPVA: 2% - 3600

    before do
      order.add_product(bmw)
      order.add_product(fazer)
      order.add_product(ranger)
    end

    it 'must be calculate sub total' do
      expect(order.sub_total).to eq 249000
    end

    it 'must be caculate ipva' do
      expect(order.total_ipva).to eq 6210
    end

    it 'must be calculate total' do
      expect(order.total).to eq 255210
    end
  end
end
