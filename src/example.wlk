object olivia {
    var gradoDeConcentracion = 6
   
    method gradoDeConcentracion() {
        return gradoDeConcentracion
    }

    method recibeMasajes(){
        gradoDeConcentracion += 3
    }
    method discute(){
        gradoDeConcentracion -= 1
    }
}

object bruno {
    var esFeliz = true
    var sed = false
    var peso = 55000

    method recibirMasajes(){
        esFeliz = false
    }
    method tomaBanoDeVapor(){
        peso -= 500
        sed = true
    }
    method tomaAgua(){
        sed = false
    }
    method comeFideos(){
        peso += 250
        sed = true
    }
    method corre(){
        peso -= 300
    }
    method veElNoticiero(){
        esFeliz = false
    }
    method esFeliz(){
        return esFeliz
    }
    method tieneSed(){
        return sed
    }
    
    method mediodiaEnCasa(){
        self.comeFideos()
        self.tomaAgua()
        self.veElNoticiero()
    }
    method estaPerfecto() {
        return self.esFeliz() and!self.tieneSed() and peso.between(50000,70000)
    }
}

object ramiro{
    var contractura = 0
    var grasaEnPiel = true

        method recibirMasajes(){
        contractura = (contractura - 2).max(0)
    }
        method seDaBanoDeVapor(){
        grasaEnPiel = false
    }
        method comeBigMac(){
        grasaEnPiel = false
    }
        method bajaALaFosa(){
        grasaEnPiel = false
        contractura += 1

    }
        method juegaAlPaddle(){
        contractura += 3
    }
        method diaDeTrabajo(){
        self.bajaALaFosa()
        self.comeBigMac()
        self.bajaALaFosa()
    }
}   
