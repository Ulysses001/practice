class UrlParser
    def initialize(url)
        @url = url
    end
    
    def scheme 
        scheme_arr = @url.split(":")
        return scheme_arr[0]
    end
    
    def domain 
        domain_arr = @url.split("www.mydomain.com")
        return domain_arr[0]
    end
    
    def port 
        port_arr = @url.split("port")
        return port_arr[0]
    end
    
#     def path 
#         path_arr = @url.split("search")
#         return path_arr[0]
#     end
    
#     def name 
#         name_arr = @url.split("name")
#         return name_arr[0]
#     end
    
#     def id 
#         id_arr = @url.split("id")
#         return id_arr[0]
#     end
# end