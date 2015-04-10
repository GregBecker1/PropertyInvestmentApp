module ApplicationHelper
  
  # Returns the full title on a per-page basis.         
  def full_title(page_title = '')                        optional arg
    base_title = "Investment Property Comparison App"   
    if page_title.empty?                                 
      base_title                                        
    else
      "#{page_title} | #{base_title}"                    
    end
  end
end
