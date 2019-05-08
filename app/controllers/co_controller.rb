class CoController < ApplicationController

 def home1
   @x = Kasitumon.all

   @x.each do |xx|
       if xx.koumoku == "Day0" then
         @y0 = xx.nitiji
       elsif xx.koumoku == "Day1" then
         @y1 = xx.nitiji
       elsif xx.koumoku == "Day2" then
         @y2 = xx.nitiji
       elsif xx.koumoku == "Day3" then
         @y3 = xx.nitiji
       elsif xx.koumoku == "Day4" then
         @y4 = xx.nitiji
       end
       @y = xx.nitiji
   end
 end

 def home
   @x = Kasitumon.all
   @y = Kasitumon.new
 end

 def create
   @z = Kasitumon.new(z_params)
   @z.nitiji = Time.new
   @z.save
   redirect_to "/kasitumon"
 end

 def update
   a = Kasitumon.new(z1_params)
   @w = Kasitumon.find(a.id)

   p params[:id]
   if @w.nitiji1  == nil  then
     @w.nitiji1 = Time.new
   elsif @w.nitiji2 == nil  then
     @w.nitiji2 = Time.new
   elsif @w.nitiji3 == nil  then
     @w.nitiji3 = Time.new
   end

   @w.update(z1_params)
   redirect_to "/kasitumon"
 end


 private
 def z_params
   params.require(:kasitumon).permit(:shitumonsya, :shitumonbun)
 end
 def z1_params
   params.require(:kasitumon).permit(:id , :hentousya1, :hentoubun1 , :hentousya2, :hentoubun2 , :hentousya3, :hentoubun3 )
 end
end