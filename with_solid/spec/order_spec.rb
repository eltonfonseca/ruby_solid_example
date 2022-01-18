require_relative '../order'
require_relative '../car'
require_relative '../truck'
require_relative '../motocicle'
require_relative '../beer'
require_relative '../discount'

RSpec.describe Order do
  let(:order) { Order.new }
  let(:january) { 1 }
  let(:february) { 2 }

  context 'with products' do
    let(:bmw) { Car.new('BMW', 54000) } # IPVA: 4% - 2160
    let(:fazer) { Motocicle.new('Fazer 150', 15000) } # IPVA: 3% - 450
    let(:ranger) { Truck.new('Mercedes', 180000) } # IPVA: 2% - 3600
    let(:cerveja) { Beer.new('Itaipava', 15) }

    before do
      order.add_product(bmw)
      order.add_product(fazer)
      order.add_product(ranger)
      order.add_product(cerveja)
    end

    it 'must be calculate sub total' do
      expect(order.sub_total).to eq 249015
    end

    it 'must be caculate ipva' do
      expect(order.total_ipva(Discount.new(february))).to eq 6210
    end

    it 'must be calculate total' do
      expect(order.total(Discount.new(february))).to eq 255225
    end

    it 'must be calculate ipva with discount' do
      expect(order.total_ipva(Discount.new(january))).to eq 5130
    end
  end
end
