class CreateCoronaData < ActiveRecord::Migration[6.0]
  def change
    create_table :corona_data do |t|
      t.string :country
      t.integer :cases
      t.integer :todayCases
      t.integer :deaths
      t.integer :todayDeaths
      t.integer :recovered
      t.integer :active
      t.integer :critical
      t.integer :casesPerOneMillion
      t.integer :deathsPerOneMillion
      t.integer :totalTests
      t.integer :testsPerOneMillion
      t.timestamps
    end
  end
end

# "country": "World",
# "cases": 11669349,
# "todayCases": 116778,
# "deaths": 538795,
# "todayDeaths": 2336,
# "recovered": 6603057,
# "active": 4527497,
# "critical": 58654,
# "casesPerOneMillion": 1497,
# "deathsPerOneMillion": 69,
# "totalTests": 0,
# "testsPerOneMillion": 0