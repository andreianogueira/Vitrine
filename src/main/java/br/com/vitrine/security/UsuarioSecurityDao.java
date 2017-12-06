package br.com.vitrine.security;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

@Repository
public class UsuarioSecurityDao implements UserDetailsService{

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
		List<Usuario> usuarios = manager.createQuery("select u from Usuario u where u.login = :login", Usuario.class)
				.setParameter("login", login)
				.getResultList();
				
				if(usuarios.isEmpty()) {
					throw new UsernameNotFoundException("usuario: "+login+" invalido");
				}
				
				return usuarios.get(0);
	}

}
