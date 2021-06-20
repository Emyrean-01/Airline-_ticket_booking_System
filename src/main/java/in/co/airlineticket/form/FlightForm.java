package in.co.airlineticket.form;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import in.co.airlineticket.dto.BaseDTO;
import in.co.airlineticket.dto.FlightDTO;

public class FlightForm extends BaseForm {

	@NotEmpty(message="Flight number is required")
	private String flightNo;
	@NotEmpty(message="Flight name is required")
	@Pattern(regexp = "(^[A-Za-z ]*)*$",message = "Name is Invalid")
	private String name;
	@NotEmpty(message="PNR No is required")
	private String PNR;
	
	
	
	public String getFlightNo() {
		return flightNo;
	}

	public void setFlightNo(String flightNo) {
		this.flightNo = flightNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPNR() {
		return PNR;
	}

	public void setPNR(String pNR) {
		PNR = pNR;
	}

	@Override
	public BaseDTO getDTO() {
		FlightDTO dto=new FlightDTO();
		dto.setId(id);
		dto.setFlightNo(flightNo);
		dto.setName(name);
		dto.setPNR(PNR);

		return dto;
	}

	@Override
	public void populate(BaseDTO bdto) {
		FlightDTO dto=(FlightDTO) bdto;
		id=dto.getId();
		flightNo=dto.getFlightNo();
		name=dto.getName();
		PNR=dto.getPNR();

	}

}
