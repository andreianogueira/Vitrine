package br.com.vitrine.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import org.springframework.stereotype.Repository;

import br.com.vitrine.teste.Atividade;

@Repository

public class AtividadeRepository {

/**
 * @PersistenceContext é o local onde ficam armazenados as entidades 
 * que estão sendo manipuladas pelo EntityManager
 * 
 * 
 *@PersistenceContext(type = PersistenceContextType.EXTENDED) assim o Wildfly vai 
 *gerenciar	para nos as entidades.
 * 
 **/
@PersistenceContext(type = PersistenceContextType.EXTENDED)
private EntityManager manager;


/**
 * 
 * @param usuarioModel
 * 
 * Salva um novo registro
 * 
 * O JPA exige um contexto de transação para realizar as alterações, por isso vamos
 * usar a anotação @javax.transaction.Transactional
 *  
 * */
@javax.transaction.Transactional
public void Salvar(Atividade atividade){

	manager.persist(atividade);		
}

/**
 * 
 * @param usuarioModel
 * 
 * Realiza a alteração de um registro
 */

@javax.transaction.Transactional
public void Alterar(Atividade atividade){

	manager.merge(atividade);		
}

/**
 * 
 * @param codigo
 * @return UsuarioModel
 * 
 * Consulta um usuário por código
 */	
public Atividade ConsultarPorCodigo(int codigo){

	return manager.find(Atividade.class, codigo);		
} 

/**
 * 
 * @param codigo
 * 
 * Exclui um usuário pelo código
 */
@javax.transaction.Transactional
public void Excluir(int codigo){

	Atividade atividade = this.ConsultarPorCodigo(codigo);

	manager.remove(atividade);

}

/**
 * 
 * @return List<UsuarioModel>
 * 
 * Consulta todos os usuários cadastrados no banco de dados
 */
public List<Atividade> TodosUsuarios(){

	return manager.createQuery("SELECT c FROM Atividade c ORDER BY c.nome ", Atividade.class).getResultList();	
}

}