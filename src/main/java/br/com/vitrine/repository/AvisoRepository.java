package br.com.vitrine.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.vitrine.model.Aviso;

public interface AvisoRepository extends JpaRepository<Aviso, Integer>{
	
}
