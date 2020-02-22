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

#[{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"E", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"D", "block":"A", "seat":1, "len":"20m"},{"floor":"E", "block":"A", "seat":1, "len":"20m"}]

#[{"elements":[{"text":"hello world","icon":"stairs_up"},{"text":"hello world","icon":"stairs_down"},{"text":"hello world","icon":"stairs_up"},{"text":"hello world","icon":"stairs_up"}]},{"elements":[{"text":"hello world","icon":"stairs_up"},{"text":"hello world","icon":"stairs_down"},{"text":"hello world","icon":"stairs_up"},{"text":"hello world","icon":"stairs_up"}]},{"elements":[{"text":"hello world","icon":"stairs_up"},{"text":"hello world","icon":"stairs_down"},{"text":"hello world","icon":"stairs_up"},{"text":"hello world","icon":"stairs_up"}]}]
