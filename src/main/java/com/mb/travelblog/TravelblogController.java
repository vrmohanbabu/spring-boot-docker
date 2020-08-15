package com.mb.travelblog;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RestController;  
@RestController  
public class TravelblogController {
	@RequestMapping("/travelblog")  
	public String hello()   
	{  
	return "Mohan's Travelblog";  
	} 
}
