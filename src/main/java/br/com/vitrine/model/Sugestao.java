package br.com.vitrine.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Sugestao {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_sugestao;
	private int idMorador;
    private String nomeMorador;
    private String bloco;
    private String apartamento;
    private String descricaoSugestao;
    private String resposta;
    
	public int getId_sugestao() {
		return id_sugestao;
	}


	public void setId_sugestao(int id_sugestao) {
		this.id_sugestao = id_sugestao;
	}


	public int getIdMorador() {
		return idMorador;
	}


	public void setIdMorador(int idMorador) {
		this.idMorador = idMorador;
	}


	public String getNomeMorador() {
		return nomeMorador;
	}


	public void setNomeMorador(String nomeMorador) {
		this.nomeMorador = nomeMorador;
	}


	public String getBloco() {
		return bloco;
	}


	public void setBloco(String bloco) {
		this.bloco = bloco;
	}


	public String getApartamento() {
		return apartamento;
	}


	public void setApartamento(String apartamento) {
		this.apartamento = apartamento;
	}


	public String getDescricaoSugestao() {
		return descricaoSugestao;
	}


	public void setDescricaoSugestao(String descricaoSugestao) {
		this.descricaoSugestao = descricaoSugestao;
	}


	public String getResposta() {
		return resposta;
	}


	public void setResposta(String resposta) {
		this.resposta = resposta;
	}

	@Override
	public String toString() {
		return "Sugestao [id_sugestao=" + id_sugestao + ", idMorador=" + idMorador + ", nomeMorador=" + nomeMorador
				+ ", bloco=" + bloco + ", apartamento=" + apartamento + ", descricaoSugestao=" + descricaoSugestao
				+ ", resposta=" + resposta + "]";
	}
}
