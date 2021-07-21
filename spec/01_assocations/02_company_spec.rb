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

  it "has a name and founding year" do
    expect(facebook).to have_attributes(name: "Facebook", founding_year: 2004)
  end

  describe "#freebies" do
    it "returns a collection of all the freebies for the Company" do
      expect(facebook.freebies.count).to eq(1)
    end
  end

  describe "#devs" do
    it "returns a collection of all the devs who collected freebies from the Company" do
      expect(facebook.devs.count).to eq(1)
    end
  end

end
