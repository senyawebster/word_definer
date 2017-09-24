class Word
  @@list = []
  attr_reader(:id)
  attr_accessor(:item, :definition)

  def initialize(item, definition)
    @item = item
    @definition = definition
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end


  #
  # def self.search(id)
  #   search_id = id.to_i
  #
  #   #for future use, not implemented yet
  #   @@list.each do |word|
  #     if search_id == word.id
  #       return word
  #     end
  #   end
  # end

  #I'll also need a self.add

  #I'll also need a self.remove?

end
