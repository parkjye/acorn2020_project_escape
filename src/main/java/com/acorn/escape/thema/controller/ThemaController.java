package com.acorn.escape.thema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ThemaController {
	
	//테마
	@RequestMapping("/thema/thema")
	public String thema() {
		return "thema/thema";
	}
	
	@RequestMapping("/thema/all_thema")
	public String ajax_all() {
		return "thema/include/all_thema";
	}
	@RequestMapping("/thema/hongdae_thema")
	public String ajax_hongdae() {
		return "thema/include/hongdae_thema";
	}
	@RequestMapping("/thema/daegu_thema")
	public String ajax_daegu() {
		return "thema/include/daegu_thema";
	}
	@RequestMapping("/thema/jeonju_thema")
	public String ajax_jeonju() {
		return "thema/include/jeonju_thema";
	}
	@RequestMapping("/thema/jamsil_thema")
	public String ajax_jamsil() {
		return "thema/include/jamsil_thema";
	}
	@RequestMapping("/thema/daejeon_thema")
	public String ajax_daejeon() {
		return "thema/include/daejeon_thema";
	}
	@RequestMapping("/thema/incheon_thema")
	public String ajax_incheon() {
		return "thema/include/incheon_thema";
	}
	@RequestMapping("/thema/cheonho_thema")
	public String ajax_cheonho() {
		return "thema/include/cheonho_thema";
	}
	@RequestMapping("/thema/suyu_thema")
	public String ajax_suyu() {
		return "thema/include/suyu_thema";
	}
}
