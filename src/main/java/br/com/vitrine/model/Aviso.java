package br.com.vitrine.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Aviso {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idAviso;
	private String tituloAviso; 
	private String descricaoAviso;
	@Temporal(TemporalType.TIMESTAMP)
	private Date data;
	
	public int getIdAviso() {
		return idAviso;
	}
	public void setIdAviso(int idAviso) {
		this.idAviso = idAviso;
	}
	public String getTituloAviso() {
		return tituloAviso;
	}
	public void setTituloAviso(String tituloAviso) {
		this.tituloAviso = tituloAviso;
	}
	public String getDescricaoAviso() {
		return descricaoAviso;
	}
	public void setDescricaoAviso(String descricaoAviso) {
		this.descricaoAviso = descricaoAviso;
	}
	public Date getData() {
		return data;
	}
	
	@Override
	public String toString() {
		return "Aviso [idAviso=" + idAviso + ", tituloAviso=" + tituloAviso + ", descricaoAviso=" + descricaoAviso
				+ ", data=" + data + "]";
	}
	public void setData(Date data) {
		this.data = data;
	}
	
	
}
