package br.com.vitrine.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.vitrine.model.Morador;
import br.com.vitrine.repository.MoradorRepository;

@Controller
@RequestMapping("/morador")
public class MoradorController {

	@Autowired
	MoradorRepository repo;
	
	@PostMapping("/cadastra")
	public ModelAndView cadastraMorador(@ModelAttribute("morador") @Valid Morador morador, BindingResult result) {
		System.out.println(morador);
		repo.save(morador);
		ModelAndView modelMorador = new ModelAndView("morador/CadastroDeMorador");
		modelMorador.addObject("morador", new Morador());
		modelMorador.addObject("mensagem", "salvo com sucesso");
		return modelMorador;
	}
	
	@GetMapping("/formulario")
	public ModelAndView formularioMorador() {
		Morador morador = new Morador();
		ModelAndView modelMorador = new ModelAndView("morador/CadastroDeMorador");
		modelMorador.addObject("morador", morador);
		modelMorador.addObject("listaMorador", repo.findAll());
		return modelMorador;
	}
	
	@PostMapping("/deleta")
	public ModelAndView deletarMorador(@ModelAttribute("morador") @Valid Morador morador, BindingResult result) {
		repo.delete(morador);
		ModelAndView modelMorador = new ModelAndView("morador/CadastroDeMorador");
		modelMorador.addObject("morador", new Morador());
		modelMorador.addObject("mensagem", "Deletado com sucesso");
		return modelMorador;
	}
	
	@GetMapping("/altera/{id}")
	public ModelAndView alteraMorador(@PathVariable("id") int id) {
		Morador morador = repo.getOne(id);
		ModelAndView modelMorador = new ModelAndView("morador/CadastroDeMorador");
		modelMorador.addObject("morador", morador);
		modelMorador.addObject("listaMorador", repo.findAll());
		return modelMorador;
	}
}
