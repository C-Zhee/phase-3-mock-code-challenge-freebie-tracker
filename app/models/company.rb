class Company < ActiveRecord::Base
    has_many :freebies 
    has_many :dev through :freebies

    def give_freebie (dev, item_name, value)
        Freebie.create (item_name: item_name,  
                        value: value, 
                        dev: dev, 
                        company: self)
    end
end

def self.oldest_company
    Company.all.order(:founding_year).first
end
