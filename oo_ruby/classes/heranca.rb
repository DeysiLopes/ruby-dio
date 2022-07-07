#Ruby permite apenas herança de UMA classe para outra
#Herança é para reuso de funcionalidades
class Sensor
    def instalar
        puts "Instalando sensor"
    end
    def iniciar
        puts "Iniciando sensor"
    end
    def coletar_dados
        puts "Coletando dados"
        puts "Analisando dados"
    end
end

class SensorTemperatura < Sensor #sintaxe para estabelecer herança
    def coletar_dados
        puts "Coletando dados de temperatura"
        super #usa quando for necessario reutilizar estrutura de algum metodo da classe mae em filha
    end
end

sensor = SensorTemperatura.new
sensor.instalar
sensor.iniciar
sensor.coletar_dados