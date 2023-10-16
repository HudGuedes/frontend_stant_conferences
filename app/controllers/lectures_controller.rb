require 'rest-client'
require 'base64'

class LecturesController < ApplicationController

  def index
    response = ApiService.get('lectures')
    @lectures = JSON.parse(response.body)
  end

  def show
    @lecture = ApiService.get("lectures/#{params[:id]}", params)
  end

  def new
  end

  def edit
    response = ApiService.get("lectures/#{params[:id]}")
    @lecture = JSON.parse(response.body)
  end

  def create
    response = ApiService.post('lectures', params)

    if response.code == 201
      redirect_to lectures_path, notice: "Criado com sucesso" 
    else
      flash[:error] = 'Não foi criado' 
      render :new
    end
  end

  def update
    response = ApiService.put("lectures/#{params[:id]}", params)

    if response.code == 200
      redirect_to lectures_path, notice: "Atualizado com sucesso"
    else
      flash[:error] = 'Não foi possível atualizar'
      render :edit
    end
  end

  def delete
    response = ApiService.delete("lectures/#{params[:id]}", params)

    if response.code == 204
      redirect_to lectures_path, notice: "Excluído com sucesso"
    else
      flash[:error] = 'Não foi possível excluir'
      redirect_to lectures_path
    end
  end

  def import_file
    data = File.open(params[:file].path).read
    encoded = Base64.strict_encode64(data)
    params[:file] = encoded
    response = ApiService.post("lectures/import", params)
    @data = JSON.parse(response.body)
    if response.code == 200
      render :organize
    else
      flash[:error] = 'Não foi possível importar'
      render :new
    end
  end
end
