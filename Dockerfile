# Usa a imagem exata do laboratório que estava no seu compose
FROM harbor.lab.vaultid.com.br/cess/cess:1.12.6

# Expõe a porta 8080
EXPOSE 8080

# 🔥 O SEGREDO: Copia a pasta local para o caminho exato que o compose usava
COPY ./hom-truststore /var/www/data/trust

# O restante das variáveis de ambiente nós vamos colocar direto no painel do Render