package br.com.vitrine.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.vitrine.model.Morador;

public interface MoradorRepository extends JpaRepository<Morador, Integer>{

}
