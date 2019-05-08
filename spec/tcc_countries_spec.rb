RSpec.describe TccCountries do
  it "has a version number" do
    expect(TccCountries::VERSION).not_to be nil
  end

  it "lists all countries" do
    expect(TccCountries.all).to be_a Array
    expect(TccCountries.all).to_not be_empty
  end

  it "lists all regions" do
    expect(TccCountries::REGIONS).to be_a Array
    expect(TccCountries::REGIONS.length).to eq 12 # this seems unlikely to change
  end

  it "lists countries by regions" do
    expect(TccCountries::COUNTRIES).to be_a Hash
    expect(TccCountries::COUNTRIES.keys.sort).to eq TccCountries::REGIONS
    expect(TccCountries::COUNTRIES.values.flatten.sort).to eq TccCountries.all
  end

  it "only includes well-formatted countries" do
    countries_with_bad_parenthesis = TccCountries.all.select do |country|
      country.match /\((?![^)]+\))/
    end
    expect(countries_with_bad_parenthesis).to be_empty
  end
end
