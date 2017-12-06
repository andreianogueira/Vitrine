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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.vitrine.model.Dependente;
import br.com.vitrine.repository.DependenteRepository;

@Controller
@RequestMapping("/dependente")
public class DependenteController {

	@Autowired
	DependenteRepository repo;
	
	@PostMapping("/cadastra")
	public ModelAndView cadastraDependente(@ModelAttribute("dependente") @Valid Dependente dependente, BindingResult result, RedirectAttributes redirectAttributes) {
		System.out.println(dependente);
		repo.save(dependente);
		ModelAndView modelDependente = new ModelAndView("redirect:formulario");
		redirectAttributes.addFlashAttribute("mensagem", "salvo com sucesso");
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
	
	@PostMapping("/deleta")
	public ModelAndView deletarDependente(@ModelAttribute("dependente") @Valid Dependente dependente, BindingResult result, RedirectAttributes redirectAttributes) {
		repo.delete(dependente);
		ModelAndView modelDependente = new ModelAndView("redirect:formulario");
		redirectAttributes.addFlashAttribute("mensagem", "deletado com sucesso");
		return modelDependente;
	}
	
	@GetMapping("/altera/{id}")
	public ModelAndView alteraDependente(@PathVariable("id") int id) {
		Dependente dependente = repo.getOne(id);
		ModelAndView modelDependente = new ModelAndView("dependente/CadastroDeDependente");
		modelDependente.addObject("dependente", dependente);
		modelDependente.addObject("listaDependente", repo.findAll());
		return modelDependente;
	}
}
	
