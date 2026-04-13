# Usa a imagem exata do laboratório que estava no seu compose
# Puxando a imagem do seu próprio Docker Hub público
FROM itsjuniordias1997/cess-canna:1.12.6

# Expõe a porta 8080
EXPOSE 8080

# Copia a pasta de certificados
COPY ./hom-truststore /var/www/data/trust
COPY ./license /var/www/data/license

# Ajustes de memória e fuso horário
ENV TZ=America/Sao_Paulo
ENV JAVA_OPTS="-Xmx1024m"