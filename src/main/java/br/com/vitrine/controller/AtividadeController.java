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

import br.com.vitrine.model.Atividade;
import br.com.vitrine.repository.AtividadeRepository;

@Controller
@RequestMapping("/atividade")
public class AtividadeController {

	@Autowired
	AtividadeRepository repo;
	
	@PostMapping("/cadastra")
	public ModelAndView cadastraAtividade(@ModelAttribute("atividade") @Valid Atividade atividade, BindingResult result) {
		System.out.println(atividade);
		repo.save(atividade);
		ModelAndView modelAtividade = new ModelAndView("atividade/CadastroDeAtividade");
		modelAtividade.addObject("atividade", new Atividade());
		modelAtividade.addObject("mensagem", "salvo com sucesso");
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
}