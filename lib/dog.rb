class Dog
  
  attr_accessor :id, :name, :breed 
  
  def initialize(id:  nil, name:, breed:)
    @name = name
    @id = id
    @breed = breed
    
  end
  
   def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        breed TEXT
        )
        SQL

    DB[:conn].execute(sql) 
  end
  
  
end