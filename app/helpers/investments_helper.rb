module InvestmentsHelper

    def display_header(cryptocoin)
        if cryptocoin
            tag.h1( "All #{cryptocoin.name} Investments")
        else
            tag.h2("All Investments")
        end
    end

end
