package com.cgv.controllers.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class PostAdminController {
	@GetMapping("/baiviet")
	public ModelAndView baiviet() {
		ModelAndView mv = new ModelAndView("admin/baiviet");
		
		return mv;
		
	}
}
