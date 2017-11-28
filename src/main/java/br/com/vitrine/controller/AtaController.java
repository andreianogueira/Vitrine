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

import br.com.vitrine.model.Ata;
import br.com.vitrine.repository.AtaRepository;

@Controller
@RequestMapping("/ata")
public class AtaController {

	@Autowired
	AtaRepository repo;
	
	@PostMapping("/cadastra")
	public ModelAndView cadastraAta(@ModelAttribute("ata") @Valid Ata ata, BindingResult result) {
		System.out.println(ata);
		repo.save(ata);
		ModelAndView modelAta = new ModelAndView("ata/AdicionaAta");
		modelAta.addObject("ata", new Ata());
		modelAta.addObject("mensagem", "salvo com sucesso");
		return modelAta;
	}
	
	@GetMapping("/formulario")
	public ModelAndView formularioAta() {
		Ata ata = new Ata();
		ModelAndView modelAta = new ModelAndView("ata/AdicionaAta");
		modelAta.addObject("ata", ata);
		modelAta.addObject("listaAta",repo.findAll());
		return modelAta;
	}
}
