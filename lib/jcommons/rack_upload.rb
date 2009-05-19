
require 'java'
require 'jcommons/native/servlet-api-2.3.jar'
require 'jcommons/native/commons-io-1.3.1.jar'
require 'jcommons/native/commons-fileupload-1.2.jar'

module JCommons
	module RackUpload
		VERSION = "0.2.0"
		def self.parse_request(env)
			upload = Java::OrgApacheCommonsFileupload::FileUpload.new
			items = upload.getItemIterator(FileUploadRequestContext.new(env))
			while items.hasNext()
				yield items.next()
			end
		end

		class FileUploadRequestContext
			include Java::OrgApacheCommonsFileupload::RequestContext
			def initialize(env)
				@env = env
			end

			def getCharacterEncoding
				@env['HTTP_CONTENT_ENCODING']
			end

			def getContentLength
				@env['CONTENT_LENGTH']
			end

			def getContentType
				@env['CONTENT_TYPE']
			end

			def getInputStream
				input = @env['rack.input']
				input.kind_of?(StringIO) ? Java::JavaIo::ByteArrayInputStream.new(input.to_java_bytes) : input.to_inputstream
			end
		end

	end	
end