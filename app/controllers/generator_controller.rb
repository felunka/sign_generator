class GeneratorController < ApplicationController
    def show

    end

    def generate
        @data = JSON.parse params[:job][:json_data]
        render "#{params[:job][:output_type]}/output", layout: false
    rescue JSON::ParserError
        byebug
    end
end
