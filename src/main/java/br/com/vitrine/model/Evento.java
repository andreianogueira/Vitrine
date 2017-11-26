package br.com.vitrine.model;

import java.util.Date;
//import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Evento {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idEvento;
	private String nomeEvento;
	private String descricaoEvento;
	@Temporal(TemporalType.TIME)
	private Date horarioEvento = new Date();
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataEvento = new Date();
	private double precoEvento;
	private String localEvento;
	
	public int getIdEvento() {
		return idEvento;
	}
	public void setIdEvento(int idEvento) {
		this.idEvento = idEvento;
	}
	public String getNomeEvento() {
		return nomeEvento;
	}
	public void setNomeEvento(String nomeEvento) {
		this.nomeEvento = nomeEvento;
	}
	public String getDescricaoEvento() {
		return descricaoEvento;
	}
	public void setDescricaoEvento(String descricaoEvento) {
		this.descricaoEvento = descricaoEvento;
	}
	public Date getHorarioEvento() {
		return horarioEvento;
	}
	public void setHorarioEvento(Date horarioEvento) {
		this.horarioEvento = horarioEvento;
	}
	public Date getDataEvento() {
		return dataEvento;
	}
	public void setDataEvento(Date dataEvento) {
		this.dataEvento = dataEvento;
	}
	public double getPrecoEvento() {
		return precoEvento;
	}
	public void setPrecoEvento(double precoEvento) {
		this.precoEvento = precoEvento;
	}
	public String getLocalEvento() {
		return localEvento;
	}
	public void setLocalEvento(String localEvento) {
		this.localEvento = localEvento;
	}
	
	
}
