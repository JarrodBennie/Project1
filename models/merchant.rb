require_relative "../db/sql_runner"

class Merchant
  attr_reader :id, :name

  def initialize( params )
    @id = nil || params[ "id" ]
    @name = params[ "name" ]
  end

  def self.all
    query = "SELECT * FROM Merchants"
    merchants = SqlRunner.execute( query )
    return merchants.map { |m| Merchant.new( m )}
  end

  def self.create( params )
    query = "INSERT INTO Merchants (
      amount,
      date
    ) VALUES (
      #{ params[ "amount" ]},
      #{ params[ "date" ]}
    )"

    SqlRunner.execute( query )
    return Merchant.new( Merchant.last_entry )
  end

  def self.last_entry
    query = "SELECT * FROM Merchants ORDER BY id DESC limit 1;"
    return SqlRunner.execute( query )[ 0 ]
  end

  def self.delete_all 
    query = "DELETE FROM Merchants"
    SqlRunner.execute( query )
  end
end