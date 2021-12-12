class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
  adjective = ['Basic', 'Spesial', 'Langka', 'Menggelegar', 'Mengerikan', 'Baik Hati', 'Iri Dengki', 'Sedih', 'Pemarah', 'Kuno']
  nouns = ['Kaktus', 'Kecombrang', 'Petualang', 'Raja', 'Ratu', 'Peselancar', 'Pejuang', 'Penghulu']
  number = rand.to_s[2..4]
  username = "#{nouns.sample}-#{adjective.sample}-#{number}"
  create(username: username)
  end

end
