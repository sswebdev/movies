directors_file = Rails.root.join('db', 'directors.json')
director_hashes = JSON.parse(open(directors_file).read)

Director.destroy_all
director_hashes.each do |director_hash|
  d = Director.new
  if Director.find_by(name: director_hash["name"]).nil?
    d.name = director_hash["name"]
    d.image_url = director_hash["image_url"]
    d.bio = director_hash["bio"]
    d.dob = director_hash["dob"]
    d.save
  end
end
puts "There are now #{Director.count} rows in the directors table."

