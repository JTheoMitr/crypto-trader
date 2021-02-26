module InvestmentsHelper

    def display_header(cryptocoin)
        if cryptocoin
            tag.h1( "All #{cryptocoin.name} Investments")
        else
            tag.h2("All Investments")
        end
    end

    def display_cryptocoin_name(cryptocoin)
        if cryptocoin
            tag.h1( "Invest in #{cryptocoin.name}")
        else
            tag.h2("New Investment")
        end
    end

    def display_cryptocoin_fields(cryptocoin, f)
        if cryptocoin
            f.hidden_field :cryptocoin_id
        else
            render partial: 'crypto_select', locals: {f: f}
        end
    end

end
