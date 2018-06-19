module ArticlesHelper
def full_name(article)
  capital(article.user.first_name+" "+article.user.last_name)
end
def capital(value)
  value.capitalize
end
end
