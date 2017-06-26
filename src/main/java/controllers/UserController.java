package controllers;  
  
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;  
import org.springframework.web.servlet.ModelAndView;

import dao.UserDao;
import model.User;

@Controller  
public class UserController {  
	
	@Autowired
	 UserDao dao;
	
    @RequestMapping("/addUser")  
    public ModelAndView showform(){  
        return new ModelAndView("addUser","command",new User());  
    }  
    
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public ModelAndView save(@Valid @ModelAttribute("use")  User user,BindingResult result){  
    	if (result.hasErrors()) {
    		
    		 System.out.println("hasfhg");
    		 return new ModelAndView("addUser");
    	 
    	}    	
    		dao.saveUser(user);
    		 return new ModelAndView("redirect:/viewUser");
}
    
    @RequestMapping(value="/update/{id}")  
    public ModelAndView edit(@PathVariable int id,HttpServletRequest request,HttpServletResponse response){   
        User user=dao.updateUser(id);
        System.out.println(user);
        request.setAttribute("values",user);
    	return new ModelAndView("updateUser");  
    } 
    
    @RequestMapping(value="/saveUpdate", method = RequestMethod.POST)  
    public ModelAndView update( @ModelAttribute("update") User user){   
  
		dao.saveUser(user);
		return new ModelAndView("redirect:/viewUser");  
    } 
    
    @RequestMapping(value="/delete/{id}")  
    public ModelAndView delete(@PathVariable int id){   
    	dao.deleteUser(id);
    	return new ModelAndView("redirect:/viewUser"); 
    } 
    
    @RequestMapping("/viewUser")  
    public ModelAndView viewemp(HttpServletRequest request, HttpServletResponse response){
    	
    	HashMap<Integer, User> hashMap = (HashMap<Integer, User>) dao.getUsersValues();
		request.setAttribute("Data", hashMap); 
		return new ModelAndView("viewUser");
    }  
    @RequestMapping("/showJSON")  
    public ModelAndView showJSON(User user){  
    	String str=dao.showDataInJSON();
        return new ModelAndView("showJSON","str",str);  
    } 
}  