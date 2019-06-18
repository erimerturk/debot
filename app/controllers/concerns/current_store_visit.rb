module CurrentStoreVisit
    private
        def set_visit_count
            if session[:counter].nil?
                session[:counter] = 1
            else
                session[:counter] = session[:counter] + 1
            end    
        end    

        def reset_visit_count
            session[:counter] = 0
        end    
end        