module FavoritesHelper
  def in_favorite?(product_id)
    if cookies[:favorites].present?
      JSON.parse(cookies[:favorites]).include?(product_id.to_s)
    end
  end
end
