require File.dirname(__FILE__) + '/spec_helper.rb'


describe JCommons::RackUpload do



  it "find this spec in spec directory" do
  	env = {}
		upload = Object.new
		iterator = Iterator.new([1])
		Java::OrgApacheCommonsFileupload::FileUpload.should_receive(:new).and_return(upload)
		upload.should_receive(:getItemIterator).and_return(iterator)
		JCommons::RackUpload.parse_request(env) do |item|
			item.should == 1	
		end
	end


	class Iterator
		def initialize(a)
			@idx = 0
			@a = a
		end

		def hasNext()
			@idx < @a.length
		end

		def next()
			@a[@idx]
			@idx += 1
		end
	end
  
end
