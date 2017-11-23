package br.com.vitrine.teste;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Table(name="atividade")
@Entity

public class Atividade {

@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name="id_atividade")
private Integer  codigo;

@Column(name="nome_atividade")
private String   nome;

@Column(name="descricao_atividade")
private String   descricao;

@Column(name="faixa_etaria")	
private String   idade;

@Column(name="local_atividade")	
private String   local;

@Column(name="horario_atividade")	
private String   horario;

@Column(name="dia_semana")	
private String   dia;

@Column(name="preco_atividade")	
private String   preco;

//@Column(name="fl_ativo",columnDefinition = "BIT", length = 1)	
//private boolean  ativo;	

public Integer getCodigo() {
	return codigo;
}
public void setCodigo(Integer codigo) {
	this.codigo = codigo;
}
public String getNome() {
	return nome;
}
public void setNome(String nome) {
	this.nome = nome;
}
public String getDescricao() {
	return descricao;
}
public void setDescricao(String descricao) {
	this.descricao = descricao;
}
public String getIdade() {
	return idade;
}
public void setIdade(String idade) {
	this.idade = idade;
}
public String getLocal() {
	return local;
}
public void setLocal(String local) {
	this.local = local;
}
public String getHorario() {
	return horario;
}
public void setHorario(String horario) {
	this.local = horario;
}
public String getDia() {
	return dia;
}
public void setDia(String dia) {
	this.dia = dia;
}
public String getPreco() {
	return preco;
}
public void setPreco(String preco) {
	this.preco = preco;
}
}