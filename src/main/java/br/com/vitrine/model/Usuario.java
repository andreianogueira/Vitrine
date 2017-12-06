package br.com.vitrine.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Usuario {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_usuario;
    private String login;
    private String senha;
    private boolean f_sindico;
	public int getId_usuario() {
		return id_usuario;
	}
	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public boolean isF_sindico() {
		return f_sindico;
	}
	public void setF_sindico(boolean f_sindico) {
		this.f_sindico = f_sindico;
	}
	@Override
	public String toString() {
		return "Usuario [id_usuario=" + id_usuario + ", login=" + login + ", senha=" + senha + ", f_sindico="
				+ f_sindico + "]";
	}
    
    
}
