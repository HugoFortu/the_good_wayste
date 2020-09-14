# Pseudo-Code:
# 1. Quand je suis sur la page produit, je clique sur l etoile et je place
# mon article en favoris en favoris => En fait je #create un favoris
# 2. Lorsque je clique sur l etoile favoris dans la navbar, j atteris sur
# l#index de mon controller Fvoris qui est en fait une liste des products
# qui contiennent le params cookies[:favorites]
# 3. Lorsque je clique sur l icone poubelle d un produit de la liste, je lance
# la #delete
# 4. Lorsque je clique sur la carte du favorites qui m interesse, je tombe sur
# la fiche #show du produit en question
# Besoins:
# Creation des routes :
  # POST
  # DELETE
# Creation d un controller (pas besoin de modele car on ne garde rien en DB)
# Creation d un vue
# Je sais pas pour l instant, A voir plus tard:
# Arriver a faire le lien avec la current_loc ?

class FavoritesController < ApplicationController
  skip_before_action :verify_authenticity_token
  # GET "/favorites", to: "favorites#index", as: 'favorites'
  def index
    # Si on a deja des produits en favoris :
    if cookies[:favorites].present?
      # on affiche tous les product qui ont un params
      @products = Product.where(id: JSON.parse(cookies[:favorites]))
      # sinon on affiche "Sorry you have not product in favorites yet"
      # (dans le html)
    else
      @products = []
    end
  end

  #POST 'products/id/favorites'
  def create
    # 1. On clique sur letoile dans la page #show product = "creer un fav"
    # 2. si il y a deja des cookies presents,
    if cookies[:favorites].present?
      # je rentre l'id du product dans mon array cookies[:favorites]
      cookies_as_array = JSON.parse(cookies[:favorites])
      cookies_as_array << params[:id]
      cookies.permanent[:favorites] = cookies_as_array.to_json
    else
      # Sinon, je cree une valeur pour la cle "favorites" = params[:id]
      cookies.permanent[:favorites] = [params[:id]].to_json
    end
  end

  #DELETE 'products/:id/favorites'
  def destroy
    favorites = JSON.parse(cookies[:favorites])
    favorites.delete(params[:id])
    cookies[:favorites] = favorites.to_json
  end
end
