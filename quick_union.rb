class QuickUnion
  def initialize(n)
    @ids = (0..n-1).to_a
  end

  def connected?(id1, id2)
    root(id1) == root(id2)
  end

  def union(id1, id2)
    id_1 = root(id1)
    id_2 = root(id2)

    @ids[id_1] = id_2
  end

  private
  def root(id)
    while id != @ids[id]
      id = @ids[id]
    end

    id
  end
end

qu = QuickUnion.new 10
qu.union(1, 3)
qu.union(2, 3)
qu.union(3, 4)
qu.union(8, 4)
qu.union(3, 4)

puts qu.connected?(1, 3)
puts qu.connected?(2, 4)
puts qu.connected?(4, 5)
puts qu.connected?(1, 8)
puts qu.connected?(4, 5)
