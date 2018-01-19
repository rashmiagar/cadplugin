 #hash = {"1": {name: "AutoCAD plugin", version: "v1.2.3"}, "2": {name: "Revit Plugin", version: "1.5.5"}}
 # $redis.set("plugins", hash.to_json)

module Api
 class MainController < ApplicationController
 	skip_before_action :verify_authenticity_token


 	def show 
 		jsonobj = JSON.parse $redis.get("plugins")
 		render json: jsonobj[params[:id]]
 	end

 	def update
 		jsonobj = JSON.parse $redis.get("plugins")
 		jsonobj[params[:id]][:name] = params[:name]
 		jsonobj[params[:id]][:version] = params[:version] if params[:version]
 		$redis.set("plugins", jsonobj.to_json)
 		render json: $redis.get("plugins")
 	end
 end
end