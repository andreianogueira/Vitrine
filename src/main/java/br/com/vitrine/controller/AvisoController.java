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

import br.com.vitrine.model.Aviso;
import br.com.vitrine.repository.AvisoRepository;

@Controller
@RequestMapping("/aviso")
public class AvisoController {
	
	@Autowired
	AvisoRepository repo;

	@PostMapping("/cadastra")
	public ModelAndView cadastraAviso(@ModelAttribute("aviso") @Valid Aviso aviso, BindingResult result, RedirectAttributes redirectAttributes) {
		System.out.println(aviso);
		repo.save(aviso);
		redirectAttributes.addFlashAttribute("mensagem", "salvo com sucesso");
		return new ModelAndView("redirect:formulario");
	}
	
	@GetMapping("/formulario")
	public ModelAndView formularioAviso() {
		Aviso aviso = new Aviso();
		ModelAndView modelAviso = new ModelAndView("aviso/CadastroDeAviso");
		modelAviso.addObject("aviso", aviso);
		modelAviso.addObject("listaAviso", repo.findAll());
		return modelAviso;
	}
	
	@PostMapping("/deleta")
	public ModelAndView deletarAviso(@ModelAttribute("aviso") @Valid Aviso aviso, BindingResult result, RedirectAttributes redirectAttributes) {
		repo.delete(aviso);
		redirectAttributes.addFlashAttribute("mensagem", "deletado com sucesso");
		return new ModelAndView("redirect:formulario");
	}
	
	@GetMapping("/altera/{id}")
	public ModelAndView alteraAviso(@PathVariable("id") int id,RedirectAttributes redirectAttributes) {
		Aviso aviso = repo.getOne(id);
		ModelAndView modelAviso = new ModelAndView("aviso/CadastroDeAviso");
		modelAviso.addObject("aviso", aviso);
		modelAviso.addObject("listaAviso", repo.findAll());
		return modelAviso;
	}
}
