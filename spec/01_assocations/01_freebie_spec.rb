describe Freebie do
  let(:freebie) { Freebie.first }

  before do
    d1 = Dev.create(name: "Rick")
    d2 = Dev.create(name: "Morty")
    c2 = Company.create(name: "Facebook", founding_year: 2004)
    c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
    Freebie.create(item_name: "Keychain", value: 2, company_id: c3.id, dev_id: d1.id)
    Freebie.create(item_name: "Keychain", value: 2, company_id: c2.id, dev_id: d2.id)
    Freebie.create(item_name: "Phone Charger", value: 10, company_id: c3.id, dev_id: d2.id)
  end

  it "has an item name and a value" do
    expect(freebie).to have_attributes(item_name: "Keychain", value: 2)
  end

  describe "#company" do
    it "returns the `Company` instance for this Freebie" do
      expect(freebie.company).to eq(Company.second)
    end
  end

  describe "#dev" do
    it "returns the `Dev` instance for this Freebie" do
      expect(freebie.dev).to eq(Dev.first)
    end
  end
end
