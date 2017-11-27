package br.com.vitrine.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Morador {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idMorador;
	private String nomeMorador;
	private String bloco;
	private String apartamento;
	private String telefone;
	private String email;
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
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "Morador [idMorador=" + idMorador + ", nomeMorador=" + nomeMorador + ", bloco=" + bloco
				+ ", apartamento=" + apartamento + ", telefone=" + telefone + ", email=" + email + "]";
	}
	
	
}
