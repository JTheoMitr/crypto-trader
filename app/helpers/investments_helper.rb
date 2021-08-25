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
            tag.h1( "Invest in #{cryptocoin.name.capitalize}")
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

    def show_full_balance(cryptocoins)
        investment_balance = []
        cryptocoins.each do |coin|
            investment_balance << ((coin.investments.where(user: current_user).sum(:yield) - coin.withdrawals.where(user: current_user).sum(:yield)) * coin.dollar_value).to_f.round(2)
        end
        return investment_balance.sum.round(2)
    end

    private

    def request_api(url)
        response = Excon.get(
          url,
          headers: {
            'X-RapidAPI-Host' => URI.parse(url).host,
            'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
          }
        )
    
        return nil if response.status != 200
    
        JSON.parse(response.body)
      end

end
