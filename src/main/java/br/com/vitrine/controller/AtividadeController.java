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

import br.com.vitrine.model.Atividade;
import br.com.vitrine.repository.AtividadeRepository;

@Controller
@RequestMapping("/atividade")
public class AtividadeController {

	@Autowired
	AtividadeRepository repo;
	
	@PostMapping("/cadastra")
	public ModelAndView cadastraAtividade(@ModelAttribute("atividade") @Valid Atividade atividade, BindingResult result, RedirectAttributes redirectAttributes) {
		System.out.println(atividade);
		repo.save(atividade);
		ModelAndView modelAtividade = new ModelAndView("redirect:formulario");
		redirectAttributes.addFlashAttribute("mensagem", "salvo com sucesso");
		return modelAtividade;
	}
	
	@GetMapping("/formulario")
	public ModelAndView formularioAtividade() {
		Atividade atividade = new Atividade();
		ModelAndView modelAtividade = new ModelAndView("atividade/CadastroDeAtividade");
		modelAtividade.addObject("atividade", atividade);
		modelAtividade.addObject("listaAtividade", repo.findAll());
		return modelAtividade;
	}
	
	@PostMapping("/deleta")
	public ModelAndView deletarAtividade(@ModelAttribute("atividade") @Valid Atividade atividade, BindingResult result, RedirectAttributes redirectAttributes) {
		repo.delete(atividade);
		ModelAndView modelAtividade = new ModelAndView("redirect:formulario");
		redirectAttributes.addFlashAttribute("mensagem", "Deletado com sucesso");
		return modelAtividade;
	}
	
	@GetMapping("/altera/{id}")
	public ModelAndView alteraAtividade(@PathVariable("id")int id) {
		Atividade atividade = repo.getOne(id);
		ModelAndView modelAtividade = new ModelAndView("atividade/CadastroDeAtividade");
		modelAtividade.addObject("atividade", atividade);
		modelAtividade.addObject("listaAtividade", repo.findAll());
		return modelAtividade;
	}
}