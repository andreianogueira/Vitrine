package br.com.vitrine.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.vitrine.security.Usuario;

public interface UsuarioRepository  extends JpaRepository<Usuario, Integer>{

}
