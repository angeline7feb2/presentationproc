class PresentationpayController < ApplicationController
	before_action :authenticate_user!, except: [:index]

  def index
  	#@presentations = Presentationdetail.order(:tname)
  	#@presentationsum = Presentationdetail.sum(:price).to_f
  end
end
