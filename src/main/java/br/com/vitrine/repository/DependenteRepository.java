package br.com.vitrine.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.vitrine.model.Dependente;

public interface DependenteRepository extends JpaRepository<Dependente, Integer> {

}
