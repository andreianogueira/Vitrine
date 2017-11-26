package br.com.vitrine.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.vitrine.model.Evento;

public interface EventoRepository extends JpaRepository<Evento, Integer> {

}
