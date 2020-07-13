# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
CoronaDatum.destroy_all

# backup api data
resp1 = RestClient.get 'https://coronavirus-19-api.herokuapp.com/countries'

json1 = JSON.parse(resp1.body)
data = json1.each do |country| 
    CoronaDatum.create(
        country: country["country"], 
        cases: country["cases"], 
        todayCases: country["todayCases"],
        deaths: country["deaths"],
        todayDeaths: country["todayDeaths"],
        recovered: country["recovered"],
        active: country["active"],
        critical: country["critical"],
        casesPerOneMillion: country["casesPerOneMillion"],
        deathsPerOneMillion: country["deathsPerOneMillion"],
        totalTests: country["totalTests"],
        testsPerOneMillion: country["testsPerOneMillion"]
        )
end

# backup api data