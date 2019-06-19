class SlugService

  SLUG_LENGTH = 5

  def self.generate
    slug = random_string(SLUG_LENGTH)
    return generate if Url.exists?(slug: slug)
    slug
  end

  def self.random_string(n)
    rand(36**n).to_s(36)
  end
end
