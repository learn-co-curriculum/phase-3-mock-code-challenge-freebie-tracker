describe Dev do
  let(:dev) { Dev.first }

  before do
    d1 = Dev.create(name: "Rick")
    d2 = Dev.create(name: "Morty")
    c2 = Company.create(name: "Facebook", founding_year: 2004)
    c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
    Freebie.create(item_name: "Keychain", value: 2, company_id: c3.id, dev_id: d1.id)
    Freebie.create(item_name: "Keychain", value: 2, company_id: c2.id, dev_id: d1.id)
    Freebie.create(item_name: "Phone Charger", value: 10, company_id: c3.id, dev_id: d2.id)
  end

  it "has a name" do
    expect(dev).to have_attributes(name: "Rick")
  end

  describe "#freebies" do
    it "returns a collection of all the freebies for the Dev" do
      expect(dev.freebies.count).to eq(2)
    end
  end

  describe "#companies" do
    it "returns a collection of all the companies that the Dev has collected freebies from" do
      expect(dev.companies.count).to eq(2)
    end
  end

end
