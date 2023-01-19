class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies through: :freebies

    def recieved_one? (item_name)
        freebies.map do |a|
            a.item_name
        end

    def give_away(freebie, dev)
       
end


