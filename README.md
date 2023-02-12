# <center> 🔍 EXIF IMAGEM  
<BR>

- Este repositório contém um script para ler metadados de imagens e extrair a geolocalização. 
## <center> 📜 Requisitos 
<BR>

 - Antes de utilizar o script, é necessário ter o exiftool instalado. Se você não tem, não se preocupe, o script verifica se ele está instalado e se não estiver, ele irá instalar automaticamente.

## <center> 💻 Utilização  

```bash 
 1. Faça o clone deste repositório para o seu computador.

    $ git clone https://github.com/ddn0x/exif.git

2. Abra o terminal e vá até o diretório onde você clonou o repositório. 

3. Logo em seguida e necessario torná-lo executável com o seguinte comando.

   $ chmod +x ./exif.sh  

4. Forneça o caminho da imagem como argumento para o script. Exemplo: ./exif.sh caminho/da/imagem.jpg

5. Os metadados da imagem serão exibidos, seguidos pela geolocalização.

```
# <center> 💡 Observações 
- Este script foi testado em ambientes Unix-like, como Linux e MacOS. Para Windows, seria necessário usar diferentes comandos para instalar o exiftool e extrair a geolocalização.

- É importante notar que algumas imagens podem não conter informações de geolocalização, neste caso o script retornaria "Geolocalização: " vazio. <br><br><br>


> - Codado por [ddn0x ](https://github.com/ddn0x/) 

