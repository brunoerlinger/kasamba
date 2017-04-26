class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @categories = Category.children_of(1)
  end

  def index
    @category = Category.find(params[:category])
    @products = Product.where(category: @category)

    # @services_with_address = @services.joins(:user).where.not("users.latitude is null and users.longitude is null")

    # @users = @services.map(&:user)

    # @hash = Gmaps4rails.build_markers(@services_with_address) do |service, marker|
    #   marker.lat service.user.latitude
    #   marker.lng service.user.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
  end

  def show
    # raise
    @product = Product.find(params[:id])
    # @proposal = @service.proposals.new(user: current_user)
    # @proposal_list = Proposal.where( service_id: @service )
  end
end
