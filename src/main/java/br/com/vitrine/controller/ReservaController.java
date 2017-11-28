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

import br.com.vitrine.model.Reserva;
import br.com.vitrine.repository.ReservaRepository;

@Controller
@RequestMapping("/reserva")
public class ReservaController {

	@Autowired
	ReservaRepository repo;
	
	@PostMapping("/cadastra")
	public ModelAndView cadastraReserva(@ModelAttribute("reserva") @Valid Reserva reserva, BindingResult result) {
		System.out.println(reserva);
		repo.save(reserva);
		ModelAndView modelReserva = new ModelAndView("reserva/ReservaEspaco");
		modelReserva.addObject("reserva", new Reserva());
		modelReserva.addObject("mensagem", "salvo com sucesso");
		return modelReserva;
	}
	
	@GetMapping("/formulario")
	public ModelAndView formularioReserva() {
		Reserva reserva = new Reserva();
		ModelAndView modelReserva = new ModelAndView("reserva/ReservaEspaco");
		modelReserva.addObject("reserva", reserva);
		return modelReserva;
	}
}
