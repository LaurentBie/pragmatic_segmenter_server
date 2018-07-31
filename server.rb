#!/usr/local/bin/ruby 

require 'sinatra'
require 'json'
require 'json-schema'
require 'pragmatic_segmenter'

set :port, 8500
set :bind, '0.0.0.0'

post '/segment' do
 	inputs = JSON.parse(request.body.read)

	schema = {
		"type" => "object",
		"required" => ["text", "lang"],
		"properties" => {
			"text" => {"type" => "string"},
			"lang" => {"type" => "string"}
		}  
	}

	is_array = true
	if not inputs.kind_of?(Array)
		inputs = [inputs]
		is_array = false
	end	

	begin
		JSON::Validator.validate!(schema, inputs , :list => true)
	rescue JSON::Schema::ValidationError => e
		json_message = {"error":e.message}.to_json
		status 400
		body json_message
		return
	end

	results = []	
	inputs.each do |input, index|	  
		text = input['text']
			lang = input['lang']
			ps = PragmaticSegmenter::Segmenter.new(text: text, language: lang)
		results.push({
			"text": text,
			"segs": ps.segment
		}) 
		end	
	if is_array
		results.to_json
	else
		results[0].to_json
	end
end
