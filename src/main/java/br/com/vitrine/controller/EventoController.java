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

import br.com.vitrine.model.Evento;
import br.com.vitrine.repository.EventoRepository;

@Controller
@RequestMapping("/evento")
public class EventoController {
	
	@Autowired
	EventoRepository repo;

	@PostMapping("/cadastra")
	public ModelAndView cadastraEvento(@ModelAttribute("evento") @Valid Evento evento, BindingResult result) {
		System.out.println(evento);
		repo.save(evento);
		ModelAndView modelEvento = new ModelAndView("evento/CadastroDeEvento");
		modelEvento.addObject("evento", new Evento());
		modelEvento.addObject("mensagem", "salvo com sucesso");
		return modelEvento;
	}
	
	@GetMapping("/formulario")
	public ModelAndView formularioEvento() {
		Evento evento = new Evento();
		ModelAndView modelEvento = new ModelAndView("evento/CadastroDeEvento");
		modelEvento.addObject("evento", evento);
		modelEvento.addObject("listaEvento", repo.findAll());
		return modelEvento;
	}
	
	@PostMapping("/deleta")
	public ModelAndView deletarEvento(@ModelAttribute("evento") @Valid Evento evento, BindingResult result) {
		repo.delete(evento);
		ModelAndView modelEvento = new ModelAndView("evento/CadastroDeEvento");
		modelEvento.addObject("evento", new Evento());
		modelEvento.addObject("mensagem", "Deletado com sucesso");
		return modelEvento;
	}
	
	@GetMapping("/altera/{id}")
	public ModelAndView alteraEvento(@PathVariable("id") int id) {
		Evento evento = repo.getOne(id);
		ModelAndView modelEvento = new ModelAndView("evento/CadastroDeEvento");
		modelEvento.addObject("evento", evento);
		modelEvento.addObject("listaEvento", repo.findAll());
		return modelEvento;
	}
}
