class Dealership
  @@dealership=[]
  define_method(:initialize) do |name|
    @name = name
    @id = @@dealership.length().+1
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end
end
