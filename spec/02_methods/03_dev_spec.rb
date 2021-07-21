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

  describe "#received_one?(item_name)" do
    it "returns true if any of the freebies associated with the dev has that `item_name`" do
      expect(dev.received_one?("Keychain")).to eq(true)
    end

    it "returns false if none of the freebies associated with the dev has that `item_name`" do
      expect(dev.received_one?("Pocket Watch")).to eq(false)
    end
  end

  describe "#give_away" do
    it "changes the freebie's dev to be the given dev" do
      freebie = Freebie.first
      old_owner = freebie.dev
      new_owner = Dev.create(name: "Gazorpazop")
      expect { old_owner.give_away(freebie, new_owner) }.to change(freebie, :dev).from(old_owner).to(new_owner)
    end
  end

end
