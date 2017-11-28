package br.com.vitrine.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Atividade {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idAtividade;
	private String nomeAtividade;
	private String descricaoAtividade;
	private String faixaEtaria;
	private String localAtividade;
	private String horarioAtividade;
	private String  diaSemana;
	private double precoAtividade;
	
	public int getIdAtividade() {
		return idAtividade;
	}
	public void setIdAtividade(int idAtividade) {
		this.idAtividade = idAtividade;
	}
	public String getNomeAtividade() {
		return nomeAtividade;
	}
	public void setNomeAtividade(String nomeAtividade) {
		this.nomeAtividade = nomeAtividade;
	}
	public String getDescricaoAtividade() {
		return descricaoAtividade;
	}
	public void setDescricaoAtividade(String descricaoAtividade) {
		this.descricaoAtividade = descricaoAtividade;
	}
	public String getFaixaEtaria() {
		return faixaEtaria;
	}
	public void setFaixaEtaria(String faixaEtaria) {
		this.faixaEtaria = faixaEtaria;
	}
	public String getLocalAtividade() {
		return localAtividade;
	}
	public void setLocalAtividade(String localAtividade) {
		this.localAtividade = localAtividade;
	}
	public String getHorarioAtividade() {
		return horarioAtividade;
	}
	public void setHorarioAtividade(String horarioAtividade) {
		this.horarioAtividade = horarioAtividade;
	}
	public String getDiaSemana() {
		return diaSemana;
	}
	public void setDiaSemana(String diaSemana) {
		this.diaSemana = diaSemana;
	}
	public double getPrecoAtividade() {
		return precoAtividade;
	}
	public void setPrecoAtividade(double precoAtividade) {
		this.precoAtividade = precoAtividade;
	}
	
	@Override
	public String toString() {
		return "Atividade [idAtividade=" + idAtividade + ", nomeAtividade=" + nomeAtividade + ", descricaoAtividade="
				+ descricaoAtividade + ", faixaEtaria=" + faixaEtaria + ", localAtividade=" + localAtividade
				+ ", horarioAtividade=" + horarioAtividade + ", diaSemana=" + diaSemana + ", precoAtividade="
				+ precoAtividade + "]";
	}
	

}
