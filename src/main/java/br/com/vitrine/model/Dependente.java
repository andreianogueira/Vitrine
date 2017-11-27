package br.com.vitrine.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Dependente {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idDependente;
	private int idMorador;
	private String nomeDependente;
	private String parentesco;
	private String telefone;
	
	public int getIdDependente() {
		return idDependente;
	}
	public void setIdDependente(int idDependente) {
		this.idDependente = idDependente;
	}
	public int getIdMorador() {
		return idMorador;
	}
	public void setIdMorador(int idMorador) {
		this.idMorador = idMorador;
	}
	public String getNomeDependente() {
		return nomeDependente;
	}
	public void setNomeDependente(String nomeDependente) {
		this.nomeDependente = nomeDependente;
	}
	public String getParentesco() {
		return parentesco;
	}
	public void setParentesco(String parentesco) {
		this.parentesco = parentesco;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	@Override
	public String toString() {
		return "Dependente [idDependente=" + idDependente + ", idMorador=" + idMorador + ", nomeDependente="
				+ nomeDependente + ", parentesco=" + parentesco + ", telefone=" + telefone + "]";
	}
}
