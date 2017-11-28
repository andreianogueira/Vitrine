package br.com.vitrine.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.vitrine.model.Dependente;
import br.com.vitrine.repository.DependenteRepository;

@Controller
@RequestMapping("/dependente")
public class DependenteController {

	@Autowired
	DependenteRepository repo;
	
	@PostMapping("/cadastra")
	public ModelAndView cadastraDependente(@ModelAttribute("dependente") @Valid Dependente dependente, BindingResult result) {
		System.out.println(dependente);
		repo.save(dependente);
		ModelAndView modelDependente = new ModelAndView("dependente/CadastroDeDependente");
		modelDependente.addObject("dependente", new Dependente());
		modelDependente.addObject("mensagem", "salvo com sucesso");
		return modelDependente;
}
	
	@GetMapping("/formulario")
	public ModelAndView formularioDependente() {
		Dependente dependente = new Dependente();
		ModelAndView modelDependente = new ModelAndView("dependente/CadastroDeDependente");
		modelDependente.addObject("dependente", dependente);
		modelDependente.addObject("listaDependente", repo.findAll());
		return modelDependente;
	}
	
}
	
