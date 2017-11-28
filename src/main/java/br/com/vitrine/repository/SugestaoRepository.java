package br.com.vitrine.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.vitrine.model.Sugestao;

public interface SugestaoRepository extends JpaRepository<Sugestao, Integer> {

}
