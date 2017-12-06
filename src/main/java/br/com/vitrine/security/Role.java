package br.com.vitrine.security;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.security.core.GrantedAuthority;

@Entity
public class Role implements GrantedAuthority{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	private String nome;
	
	@ManyToOne
	@JoinColumn(name="id_usuario")
	private Usuario usuario;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Override
	public String getAuthority() {
		return this.nome;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}
