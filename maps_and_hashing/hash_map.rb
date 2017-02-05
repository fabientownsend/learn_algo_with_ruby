class HashTable
  def initialize
    @table = Array.new(100, [])
  end

  def store(key)
    @table[calculate_hash_value(key)].push(key)
  end

  def lookup(key)
    if @table[calculate_hash_value(key)].include?(key)
      calculate_hash_value(key)
    else
      -1
    end
  end

  def calculate_hash_value(key)
    (key[0].ord * 100 + key[1].ord) % @table.size
  end
end

RSpec.describe HashTable do
  let (:hash_table) { HashTable.new }

  it "calculate the hash value" do
    expect(hash_table.calculate_hash_value("KEYONE")).to eq(69)
  end

  it "return -1 if the key isn't in the table" do
    expect(hash_table.lookup("KEYONE")).to eq(-1)
  end

  it "return the hash value if key already in the table" do
    hash_table.store("KEYONE")
    expect(hash_table.lookup("KEYONE")).to eq(69)
  end

  it "store in a linked list when a collision happened" do
    hash_table.store("KEYONE")
    hash_table.store("KEYTWO")

    expect(hash_table.lookup("KEYONE")).to eq(69)
    expect(hash_table.lookup("KEYTWO")).to eq(69)
  end
end
