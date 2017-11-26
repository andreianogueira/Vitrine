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

import br.com.vitrine.model.Aviso;
import br.com.vitrine.repository.AvisoRepository;

@Controller
@RequestMapping("/aviso")
public class AvisoController {
	
	@Autowired
	AvisoRepository repo;

	@PostMapping("/cadastra")
	public ModelAndView cadastraAviso(@ModelAttribute("aviso") @Valid Aviso aviso, BindingResult result) {
		System.out.println(aviso);
		repo.save(aviso);
		ModelAndView modelAviso = new ModelAndView("aviso/CadastroDeAviso");
		modelAviso.addObject("aviso", new Aviso());
		modelAviso.addObject("mensagem", "salvo com sucesso");
		return modelAviso;
	}
	
	@GetMapping("/formulario")
	public ModelAndView formularioAviso() {
		Aviso aviso = new Aviso();
		ModelAndView modelAviso = new ModelAndView("aviso/CadastroDeAviso");
		modelAviso.addObject("aviso", aviso);
		return modelAviso;
	}
}
