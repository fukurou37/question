class CoController < ApplicationController

  def home
    @x = Kasitumon.all
    @y = Kasitumon.new
  end

  def create
    @z = Kasitumon.new(z_params)
    @z.save
    redirect_to "/kasitumon"
  end

  private
  def z_params
    params.require(:kasitumon).permit(:shitumonsya, :shitumonbun, :nitiji)
  end
end
