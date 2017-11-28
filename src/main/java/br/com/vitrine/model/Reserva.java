package br.com.vitrine.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Reserva {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idReserva;
	private int idMorador;
    private String nomeMorador;
    private String bloco;
    private String apartamento;
    private String tipoEspaco;
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataReserva = new Date();
    
	public int getIdReserva() {
		return idReserva;
	}
	public void setIdReserva(int idReserva) {
		this.idReserva = idReserva;
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
	public String getTipoEspaco() {
		return tipoEspaco;
	}
	public void setTipoEspaco(String tipoEspaco) {
		this.tipoEspaco = tipoEspaco;
	}
	public Date getDataReserva() {
		return dataReserva;
	}
	public void setDataReserva(Date dataReserva) {
		this.dataReserva = dataReserva;
	}
	@Override
	public String toString() {
		return "Reserva [idReserva=" + idReserva + ", idMorador=" + idMorador + ", nomeMorador=" + nomeMorador
				+ ", bloco=" + bloco + ", apartamento=" + apartamento + ", tipoEspaco=" + tipoEspaco + ", dataReserva="
				+ dataReserva + "]";
	}
}
