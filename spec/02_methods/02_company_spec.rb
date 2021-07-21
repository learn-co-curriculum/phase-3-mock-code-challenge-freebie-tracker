describe Company do
  let(:facebook) { Company.first }

  before do
    d1 = Dev.create(name: "Rick")
    d2 = Dev.create(name: "Morty")
    c2 = Company.create(name: "Facebook", founding_year: 2004)
    c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
    Freebie.create(item_name: "Keychain", value: 2, company_id: c3.id, dev_id: d1.id)
    Freebie.create(item_name: "Keychain", value: 2, company_id: c2.id, dev_id: d2.id)
    Freebie.create(item_name: "Phone Charger", value: 10, company_id: c3.id, dev_id: d2.id)
  end

  describe "#give_freebie(dev, item_name, value)" do
    it "creates a new `Freebie` instance associated with this company and the given dev" do
      mousepad = facebook.give_freebie(Dev.first, "Mousepad", 1)
      expect(mousepad).to have_attributes(class: Freebie, item_name: "Mousepad", value: 1)
    end
  end

  describe ".oldest_company" do
    it "returns the Company instance with the earliest founding year" do
      expect(Company.oldest_company).to eq(Company.second)
    end
  end

end
