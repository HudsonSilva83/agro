class Dados 

    def gravandoDadosEmail(email)
        
        out = File.new('../AGROHUB/features/support/dados/email.txt', "w")
        out.puts email
        out.close
      
    end


    def gravandoDadosSenha(senha)
        
        out = File.new('../AGROHUB/features/support/dados/senha.txt', "w")
        out.puts senha
        out.close
      
    end

    def lerDadosEmail
        
        saidaemail = File.read('../AGROHUB/features/support/dados/email.txt').to_s
        return saidaemail

    end


    def lerDadosSenha
        
        saidasenha = File.read('../AGROHUB/features/support/dados/senha.txt').to_s
        return saidasenha

    end

    def gravarIdpf(idpf)

        out = File.new('../AGROHUB/features/support/dados/idpf.txt', "w")
        out.puts idpf
        out.close

    end

    def gravarIdpj(idpj)

        out = File.new('../AGROHUB/features/support/dados/idpj.txt', "w")
        out.puts idpj
        out.close

    end


    def get_Idpf
        
        saidaidpf = File.read('../AGROHUB/features/support/dados/idpf.txt').to_s
        return saidaidpf
        

    end

    def get_Idpj
        
        saidaidpj = File.read('../AGROHUB/features/support/dados/idpj.txt').to_s
        return saidaidpj
        

    end


end