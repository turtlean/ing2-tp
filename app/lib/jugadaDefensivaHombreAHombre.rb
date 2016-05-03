require 'jugadaDefensiva'
require 'intercepcion'

class JugadaDefensivaHombreAHombre < JugadaDefensiva
  def initialize(equipo_defensivo)
    # @miEquipo = equipo_defensivo
    super
  end

  def defender(unMovimientoOfensivo)
    super
  end 

  def defenderPase(unPase)
    unPase.jugador_origen.paseDeTuPosicion(self)
  end

  def defenderTiro(unTiro)
    unPase.jugador_origen.tiroDeTuPosicion(self)
  end

  def defenderPaseDeBase
    [Intercepcion.new(@miEquipo.base)]
  end 

  ### TO_DO: IMPLEMENTAR CLASE BLOQUEO
  # def defenderTiroDeBase()
  #   [Bloqueo.new(@miEquipo.base)]
  # end 

  def defenderPaseDeEscolta
    [Intercepcion.new(@miEquipo.escolta)]
  end 

  # def defenderTiroDeEscolta()
  #   [Bloqueo.new(@miEquipo.escolta)]
  # end 

  def defenderPaseDeAlero
    [Intercepcion.new(@miEquipo.alero)]
  end 

  # def defenderTiroDeAlero()
  #   [Bloqueo.new(@miEquipo.alero)]
  # end 

  def defenderPaseDePivot
    [Intercepcion.new(@miEquipo.pivot)]
  end 

  # def defenderTiroDePivot()
  #   [Bloqueo.new(@miEquipo.pivot)]
  # end 

  def defenderPaseDeAlaPivot
    [Intercepcion.new(@miEquipo.alapivot)]
  end 

  # def defenderTiroDeAlaPivot()
  #   [Bloqueo.new(@miEquipo.alapivot)]
  # end 

end
