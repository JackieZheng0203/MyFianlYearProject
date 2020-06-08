package com.jackie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApplicationController {

	@RequestMapping("home")
	public String Welcome() {
		return "home.jsp";
	}

	@RequestMapping("register")
	public String Register() {
		return "register.jsp";
	}

	@RequestMapping("re-register")
	public String Re_register() {
		return "re-register.jsp";
	}

	@RequestMapping("registerSuccess")
	public String RegisterSuccess() {
		return "registerSuccess.jsp";
	}

	@RequestMapping("login")
	public String Login() {
		return "login.jsp";
	}

	@RequestMapping("account")
	public String Account() {
		return "account.jsp";
	}

	@RequestMapping("editProfile")
	public String EditProfile() {
		return "editProfile.jsp";
	}

	@RequestMapping("adminHomePage")
	public String AdminHomePage() {
		return "adminHomePage.jsp";
	}

	@RequestMapping("addNewUser")
	public String AddNewUser() {
		return "addNewUser.jsp";
	}

	@RequestMapping("category")
	public String Category() {
		return "category.jsp";
	}

	@RequestMapping("profile")
	public String Profile() {
		return "profile.jsp";
	}

	@RequestMapping("uploadRecipe")
	public String UploadRecipe() {
		return "uploadRecipe.jsp";
	}

	@RequestMapping("viewRecipes")
	public String ViewRecipes() {
		return "viewRecipes.jsp";
	}

	@RequestMapping("adminLogin")
	public String Adminlogin() {
		return "adminLogin.jsp";
	}

}
