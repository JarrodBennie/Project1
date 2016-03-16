require "pg"

class  SqlRunner
  def self.execute( query )
    begin
      db = PG.connect( dbname: "MoneyCashboard", host: "localhost" )
      result = db.exec( query )
    ensure
      db.close
    end
    return result
  end
end