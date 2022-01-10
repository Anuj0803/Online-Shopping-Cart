package com.Practice.Shop;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShopController {
    @Autowired
	SignUpRepo repo;
    
    @Autowired
    ProductsRepo repo1;
    
    @Autowired
    Login l;
   
	@GetMapping("/login")
	public String Login() {
		return "login.jsp";
	}
	
	@RequestMapping("/signUp")
	public String Sign(adminlogin sm) {
		repo.save(sm);
		return "login.jsp";	
	}
	
	@RequestMapping("/Products")
	public String products(Model model ,@ModelAttribute adminlogin ad) {
		String username = ad.getUsername();
		String password =ad.getPassword();
		if(username.equalsIgnoreCase("portaladmin") & password.equalsIgnoreCase("Jaimatadi")) {
			return "admin.jsp";
		}
		else {
			adminlogin user = l.login(ad.getUsername(), ad.getPassword());
			List<Products> listStu = repo1.findAll();
			model.addAttribute("products",listStu);
			model.addAttribute("username", ad.getUsername());
			model.addAttribute("Phone", ad.getPhone());
			System.out.println(ad.getPhone());
			if(Objects.nonNull(user)) {
				return "products.jsp";
			}
			else return "login.jsp";
		}
	}
	public static String uploadDirectory = System.getProperty("user.dir") + "/src/main/webapp/imagedata";
	@PostMapping("/add")
	public String add(Products p ,@RequestParam("img") MultipartFile file ) {
		String filename= p.getID()+file.getOriginalFilename().substring(file.getOriginalFilename().length()-4);
		System.out.println(filename);
		Path fileNameAndPath =Paths.get(uploadDirectory,filename);
		System.out.println(fileNameAndPath);
		try {
			Files.write(fileNameAndPath, file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.setPhoto(filename);
		repo1.save(p);
		return "admin.jsp";
		
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam Integer ID) {
		repo1.deleteById(ID);
		return "admin.jsp";
		
	}
	@RequestMapping("/showAll")
	public String show(Model model) {
		List<Products> listStu = repo1.findAll();
		model.addAttribute("products",listStu);
		return "products.jsp";
		
	}
	@RequestMapping("/find")
	public ModelAndView find(HttpServletResponse response,HttpServletRequest request, @RequestParam Integer ID) throws IOException {
		ModelAndView mv = new ModelAndView("product.jsp");
		Products p = repo1.findById(ID).orElse(null);
		mv.addObject("ID", p.getID());
		mv.addObject("Name", p.getName());
		mv.addObject("Price", p.getPrice());
		mv.addObject("Status",p.getStatus());
		return mv;
	}
	
	@RequestMapping("/search")
	public ModelAndView search( @RequestParam Integer ID) throws IOException {
		if(ID==1) {
			ModelAndView mv = new ModelAndView("baldev.jsp");
			Products p = repo1.findById(ID).orElse(null);
			mv.addObject("ID", p.getID());
			mv.addObject("Name", p.getName());
			mv.addObject("Price", p.getPrice());
			mv.addObject("Status",p.getStatus());
			return mv;
		}
		else if(ID==2) {
			ModelAndView mv = new ModelAndView("OnePlus.jsp");
			Products p = repo1.findById(ID).orElse(null);
			mv.addObject("ID", p.getID());
			mv.addObject("Name", p.getName());
			mv.addObject("Price", p.getPrice());
			mv.addObject("Status",p.getStatus());
			return mv;
		}
		else if(ID==3) {
			ModelAndView mv = new ModelAndView("apple.jsp");
			Products p = repo1.findById(ID).orElse(null);
			mv.addObject("ID", p.getID());
			mv.addObject("Name", p.getName());
			mv.addObject("Price", p.getPrice());
			mv.addObject("Status",p.getStatus());
			return mv;
		}
		else if(ID==4) {
			ModelAndView mv = new ModelAndView("Iphone.jsp");
			Products p = repo1.findById(ID).orElse(null);
			mv.addObject("ID", p.getID());
			mv.addObject("Name", p.getName());
			mv.addObject("Price", p.getPrice());
			mv.addObject("Status",p.getStatus());
			return mv;
		}
		else
			return null;
		
	}

}