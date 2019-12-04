class Api::V1::EventsController < ApplicationController
    require 'json'
    require 'net/http'
    require 'active_support/core_ext/hash'
    def nearest
        resp = Net::HTTP.get_response(URI.parse("http://www.nyartbeat.com/list/event_searchNear?latitude=#{params[:latitude]}&longitude=#{params[:longitude]}&SortOrder=distance&SearchRange=1500m")).body
        event = Hash.from_xml(resp).to_json
        render json: event
    end

    def free
        resp = Net::HTTP.get_response(URI.parse("http://www.nyartbeat.com/list/event_searchNear?latitude=40.75&longitude=-73.99&Free=1&SearchRange=3000m")).body
        event = Hash.from_xml(resp).to_json
        render json: event
    end



    private

    def event_params
        params.permit(:latitude, :longitude)
    end
end
