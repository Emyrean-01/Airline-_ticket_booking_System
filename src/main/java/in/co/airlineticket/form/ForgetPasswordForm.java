package in.co.airlineticket.form;

import javax.validation.constraints.NotEmpty;

import in.co.airlineticket.dto.BaseDTO;
import in.co.airlineticket.dto.UserDTO;

public class ForgetPasswordForm extends BaseForm {

	@NotEmpty(message = "Login ID is required")
	private String login;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	@Override
	public BaseDTO getDTO() {

		UserDTO dto = new UserDTO();
		dto.setLogin(login);
		return dto;
	}

	@Override
	public void populate(BaseDTO bDto) {
		// TODO Auto-generated method stub

	}

}
