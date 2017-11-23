package br.com.vitrine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/aviso")
public class AvisoController {

	@RequestMapping("/printa")
	public void printa() {
		System.out.println("Oiiee");
	}
	
}
