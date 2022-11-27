class AlquilersController < ApplicationController
    include HTTParty
    include JSON


    def show
      @autos = Auto.all
      @usuario= Usuario.all.find_by(id: session[:user_id])
      @usuarios = Usuario.all
    end

    def index
      @autos = Auto.all
      @usuario = Usuario.all.find_by(id: session[:user_id])
      @viaje = Travel.create
      render
    end

    def edit
      @usuario = Usuario.all.find_by(id: session[:user_id])
      render :edit
    end
    def validar
      @usuario = Usuario.all.find_by(id: session[:user_id])
      aux = params.permit(:cuartos,:nroA)
      aux2 = Auto.all.find_by(nroA: aux[:nroA])
      total= (((aux[:cuartos].to_i)/4)*1250)
      if (total<=@usuario.monto_actual)
        if ((@usuario.travels.find_by(auto_id: aux2.id).created_at.advance(hours: 1)) < Time.now)
          puts 'puede alquilar'
          @usuario.increment!(:monto_actual , -total)
          redirect_to action: 'index', auto: aux[:nroA].to_s, mins: ((aux[:cuartos].to_i)/4)*60 and return
        else
          puts 'lo uso hace poco'
          redirect_to alquiler_path(auto: aux[:nroA].to_s, id:'show', notice: "Lo uso hace menos de 3 Horas") and return
        end
      else
        puts 'No hay dinero'
        redirect_to alquiler_path(auto: aux[:nroA].to_s, id:'show', notice: "No Hay Dinero suficiente") and return
      end

    end
    def update
      puts '-----------------------------------------------------------'
        @usuario = Usuario.all.find_by(id: session[:user_id])
        aux = params.permit(:cuartos)
        total= (((aux[:cuartos].to_i)/4)*1250)
        @usuario.increment!(:monto_actual , -total)
    end

    def extender
      @usuario = Usuario.all.find_by(id: session[:user_id])
      aux = params.permit(:rango)
      puts aux[:rango]
    end



    def check_auto
      aux = params.permit(:patente)
      res = post_api_auto(aux[:patente])

      if res.parsed_response.key?("result") and res.parsed_response["result"] == "err_timeout"
        puts("TIMEOUT")
      else
        if res.parsed_response["status"]["door"] == "open" and res.parsed_response["status"]["engine"] == "on"
          puts("PUERTA ABIERTA Y MOTOR PRENDIDO")
        else
          if res.parsed_response["status"]["door"] == "open"
            puts("PUERTA ABIERTA")
          else
            if res.parsed_response["status"]["engine"] == "on"
              puts("MOTOR PRENDIDO")
            else
              puts("TODO OK")
            end
          end
        end
      end
    end

    def post_api_auto(patente)
        auth = {
            :username => "g11",
            :password => "apb9du"
        }

        payload = {
          "vehicle_id": patente
        }.to_json

        options = { 
            :body => payload, 
            :basic_auth => auth,
            :headers => {'Content-Type' => 'application/json'} 
        }

        results = HTTParty.post('https://alquilapp.is.k-pb.com.ar/grupo11/api/vehicle-status', options)
        return results
    end
  end
