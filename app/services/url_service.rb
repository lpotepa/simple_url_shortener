class UrlService < Struct.new(:url)
  def create
    slug = SlugService.generate
    Url.find_by(url: url) || Url.create(url: url, slug: slug)
  end
end
