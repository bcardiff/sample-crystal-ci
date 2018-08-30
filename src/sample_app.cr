require "db"
require "mysql"

module SampleApp
  def self.database_url
    ENV.fetch("DATABASE_URL", "mysql://root@localhost/sample_app")
  end

  def self.get_database_name(database_url = SampleApp.database_url)
    DB.connect(database_url) do |db|
      db.scalar("SELECT DATABASE()").as(String)
    end
  end
end
