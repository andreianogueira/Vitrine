package br.com.vitrine.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Ata {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idAta;
	private String tipoReuniao;
	private String nomeAta;
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataReuniao = new Date();
	public int getIdAta() {
		return idAta;
	}
	public void setIdAta(int idAta) {
		this.idAta = idAta;
	}
	public String getTipoReuniao() {
		return tipoReuniao;
	}
	public void setTipoReuniao(String tipoReuniao) {
		this.tipoReuniao = tipoReuniao;
	}
	public String getNomeAta() {
		return nomeAta;
	}
	public void setNomeAta(String nomeAta) {
		this.nomeAta = nomeAta;
	}
	public Date getDataReuniao() {
		return dataReuniao;
	}
	public void setDataReuniao(Date dataReuniao) {
		this.dataReuniao = dataReuniao;
	}
	@Override
	public String toString() {
		return "Ata [idAta=" + idAta + ", tipoReuniao=" + tipoReuniao + ", nomeAta=" + nomeAta + ", dataReuniao=" + dataReuniao
				+ "]";
	}
}
