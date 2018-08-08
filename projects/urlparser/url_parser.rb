class urlParser
    def initialize(url)
        @url = url
    end

    def scheme 
        scheme_arr = @url.split(":")
        return scheme_arr[0]
    end
           
    def domain 
        domain_arr = @url.split(":")
        return domain_arr[1]
    end
    
    def port 
        port_arr = @url.split("/")
        return port_arr[2]
    end
    
    def path 
        path_arr = @url.split("?")
        return path_arr[3]
    end
    
    def hash
        query_hash = ["q" => cat, "name" =>Larry]
        return query_hash 
    end

    def fragment_id 
        fragment_id_arr = @url.split("#")
        return fragment_id_arr[5]
    end
        
  end

    def @new_url
        @new_url = UrlParser.new "https://www.google.com/?q=cat#img=FunnyCat"
        expect(@new_url.path).to be(NIL)
    end
        
    def path
        path_arr = @url.split("nil")
        return path_arr 
    end
        
    def query_string 
        query_string_arr = @new_url.query_string("q" => "cat")
        return query_string_arr[6]
    end
   
    def fragment_id 
        fragment_id_arr = @new_url.fragment_id("img=FunnyCat")
        return fragment_id_arr[5]
    end
    def insecure_url
      insecure_url = UrlParser.new "http://www.google.com/search"
      expect(insecure_url.port).to eq("80")
      return insecure_url
    end

    def secure_url
      secure_url = UrlParser.new "https://www.google.com/search"
      expect(secure_url.port).to eq("443")
      return secure_url
    end
    
     def duplicate_param
      duplicate_param = UrlParser.new "http://www.google.com:60/search?q=cat&q=overwrite#img=FunnyCat"
      expect(duplicate_param.query_string).to eq({"q"=> "overwrite"})
      return duplicate_param
      end
      port_chk = 0
   case port_chk
   when insecure_url && path_arr = nil
        expect(insecure_url.port).to eq("80")
   when secure_url && path_arr = 443
        expect(secure_url.port).to eq("443")
   when duplicate_param = "q"
        expect(duplicate_param.query_string).to eq({"q"=> "overwrite"})
   else puts "Call Your Administrator"
 end    
    end