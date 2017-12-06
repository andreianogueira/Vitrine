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

import br.com.vitrine.model.Ata;
import br.com.vitrine.repository.AtaRepository;

@Controller
@RequestMapping("/ata")
public class AtaController {

	@Autowired
	AtaRepository repo;
	
	@PostMapping("/cadastra")
	public ModelAndView cadastraAta(@ModelAttribute("ata") @Valid Ata ata, BindingResult result, RedirectAttributes redirectAttributes) {
		System.out.println(ata);
		repo.save(ata);
		ModelAndView modelAta = new ModelAndView("redirect:formulario");
		redirectAttributes.addFlashAttribute("mensagem", "salvo com sucesso");
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
	
	@PostMapping("/deleta")
	public ModelAndView deletarAta(@ModelAttribute("ata") @Valid Ata ata, BindingResult result, RedirectAttributes redirectAttributes) {
		repo.delete(ata);
		ModelAndView modelAta = new ModelAndView("redirect:formulario");
		redirectAttributes.addFlashAttribute("mensagem", "Deletado com sucesso");
		return modelAta;
	}
	
	@GetMapping("/altera/{id}")
	public ModelAndView alteraAviso(@PathVariable("id") int id, RedirectAttributes redirectAttributes) {
		Ata ata = repo.getOne(id);
		ModelAndView modelAta = new ModelAndView("ata/");
		modelAta.addObject("ata", ata);
		modelAta.addObject("listaAta", repo.findAll());
		return modelAta;
	}
}
