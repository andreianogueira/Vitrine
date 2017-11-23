package br.com.vitrine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.vitrine.model.Aviso;

@Controller
@RequestMapping("/aviso")
public class AvisoController {

	@RequestMapping("/cadastra")
	public void cadastraAviso(Aviso aviso) {
		System.out.println(aviso);
	}
	
}
