package in.co.airlineticket.controller;

import java.util.HashMap;
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.co.airlineticket.dto.UserDTO;
import in.co.airlineticket.exception.DuplicateRecordException;
import in.co.airlineticket.form.ChangePasswordForm;
import in.co.airlineticket.form.ForgetPasswordForm;
import in.co.airlineticket.form.LoginForm;
import in.co.airlineticket.form.MyProfileForm;
import in.co.airlineticket.form.UserRegistrationForm;
import in.co.airlineticket.service.UserServiceInt;

@Controller
public class LoginCtl extends BaseCtl {

	private Logger log = Logger.getLogger(LoginCtl.class.getName());

	protected static final String OP_SIGNIN = "SignIn";
	protected static final String OP_SIGNUP = "SignUp";
	protected static final String OP_LOGOUT = "Logout";

	@Autowired
	private UserServiceInt service;

	@GetMapping("/login")
	public String display(@ModelAttribute("form") LoginForm form, HttpSession session, Model model) {
		log.info("LoginCtl login display method start");
		if (session.getAttribute("user") != null) {
			session.invalidate();
			model.addAttribute("success", "You logged out Successfully");
		}
		log.info("LoginCtl login display method End");
		return "login";
	}

	@ModelAttribute
	public void preload(Model model) {

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("Male", "Male");
		map.put("Female", "Female");
		model.addAttribute("gender", map);

	}

	@PostMapping("/login")
	public String submit(@RequestParam String operation, HttpSession session,
			@Valid @ModelAttribute("form") LoginForm form, BindingResult result, Model model) {
		log.info("LoginCtl login submit method start");
		System.out.println("In dopost  LoginCtl");

		if (OP_SIGNUP.equalsIgnoreCase(form.getOperation())) {
			return "redirect:signUp";
		}

		if (result.hasErrors()) {
			System.out.println(result);
			return "login";
		}

		UserDTO dto = service.authentication((UserDTO) form.getDTO());

		if (dto != null) {
			System.out.println(dto.toString());
			session.setAttribute("user", dto);
			return "redirect:/welcome";
		}
		model.addAttribute("error", "Login Id  and Password are Invalid");
		log.info("LoginCtl login submit method End");
		return "login";
	}

	@GetMapping("/signUp")
	public String display(@ModelAttribute("form") UserRegistrationForm form, Model model) {
		log.info("LoginCtl signUp display method start");
		log.info("LoginCtl signUp display method End");
		return "signUp";
	}

	@PostMapping("/signUp")
	public String submit(@RequestParam String operation, @Valid @ModelAttribute("form") UserRegistrationForm form,
			BindingResult bindingResult, Model model) {

		log.info("LoginCtl signUp submit method start");

		if (OP_RESET.equalsIgnoreCase(form.getOperation())) {
			return "redirect:signUp";
		}

		if (bindingResult.hasErrors()) {
			System.out.println(bindingResult);
			return "signUp";
		}

		try {
			if (OP_SAVE.equalsIgnoreCase(form.getOperation())) {
				UserDTO entity = (UserDTO) form.getDTO();
				entity.setRoleId(2L);
				service.add(entity);
				model.addAttribute("success", "New User Registered Successfully");
				return "signUp";
			}
		} catch (DuplicateRecordException e) {
			model.addAttribute("error", e.getMessage());
			return "signUp";
		}
		log.info("LoginCtl signUp submit method end");
		return "signUp";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String displayProfile(HttpSession session, @ModelAttribute("form") MyProfileForm form, Model model) {
		UserDTO dto = (UserDTO) session.getAttribute("user");
		form.populate(dto);
		System.out.println("/Myprofile");
		return "myprofile";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String submitProfile(HttpSession session, @ModelAttribute("form") @Valid MyProfileForm form,
			BindingResult bindingResult, @RequestParam(required = false) String operation, Model model) {

		if (OP_RESET.equalsIgnoreCase(operation)) {
			return "redirect:/profile";
		}

		if (bindingResult.hasErrors()) {
			return "myprofile";
		}
		UserDTO dto = (UserDTO) session.getAttribute("user");
		dto = service.findBypk(dto.getId());
		dto.setFirstName(form.getFirstName());
		dto.setLastName(form.getLastName());
		dto.setMobileNo(form.getMobileNo());
		dto.setEmail(form.getEmail());
		dto.setGender(form.getGender());
		dto.setDob(dto.getDob());
		try {
			service.update(dto);
		} catch (DuplicateRecordException e) {

		}
		model.addAttribute("success", "Profile Updated successfully");

		return "myprofile";
	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	public String displayChangePassword(@ModelAttribute("form") ChangePasswordForm form, Model model) {
		return "changePassword";
	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
	public String submitChangePassword(HttpSession session, @ModelAttribute("form") @Valid ChangePasswordForm form,
			BindingResult bindingResult, Model model) {

		if (bindingResult.hasErrors()) {
			return "changePassword";
		}
		if (form.getNewPassword().equalsIgnoreCase(form.getConfirmPassword())) {

			UserDTO dto = (UserDTO) session.getAttribute("user");
			dto = service.findBypk(dto.getId());

			if (service.changePassword(dto.getId(), form.getOldPassword(), form.getNewPassword())) {
				model.addAttribute("success", "Your Password has been changed");
			} else {
				model.addAttribute("error", "Old Password does not match");
			}
		} else {
			model.addAttribute("error", "New Password and confirm password do not match");
		}
		return "changePassword";
	}

	@RequestMapping(value = "/forgetPassword", method = RequestMethod.GET)
	public String display(@ModelAttribute("form") ForgetPasswordForm form, HttpSession session, Model model) {

		System.out.println("In doget LoginCtl forgetpassword");

		return "forgetPassword";

	}

	@RequestMapping(value = "/forgetPassword", method = RequestMethod.POST)
	public String display(@ModelAttribute("form") @Valid ForgetPasswordForm form, BindingResult bindingResult,
			Model model) {

		if (bindingResult.hasErrors()) {
			return "forgetPassword";
		}

		UserDTO dto = service.findByLogin(form.getLogin());

		if (dto == null) {
			model.addAttribute("error", "Login Id does not exist");
		}

		if (dto != null) {
			service.forgetPassword(form.getLogin());
			model.addAttribute("success", "Password has been sent to your registered E-mail ID!!");

		}
		return "forgetPassword";
	}

}
