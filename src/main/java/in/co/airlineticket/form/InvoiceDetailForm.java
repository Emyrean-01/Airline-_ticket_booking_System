package in.co.airlineticket.form;

import java.util.Arrays;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import in.co.airlineticket.dto.BaseDTO;
import in.co.airlineticket.dto.InvoiceDetailDTO;
import in.co.airlineticket.util.DataUtility;

public class InvoiceDetailForm extends BaseForm {
	
	@NotEmpty(message = "Name is required")
	private String[] name;
	
	@NotEmpty(message = "Gender is required")
	private String[] gender;
	@NotEmpty(message = "Date of Birth is required")
	@Pattern(regexp = "^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\\d\\d$", message = "Date Of Birth is Invalid")
	private String[] dob;
	
	private String userName;
	private String invoiceNo;
	private long userId;
	private String flightNo;
	
	
	
	
	public String getFlightNo() {
		return flightNo;
	}

	public void setFlightNo(String flightNo) {
		this.flightNo = flightNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getInvoiceNo() {
		return invoiceNo;
	}

	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String[] getName() {
		return name;
	}

	public void setName(String[] name) {
		this.name = name;
	}

	public String[] getGender() {
		return gender;
	}

	public void setGender(String[] gender) {
		this.gender = gender;
	}

	public String[] getDob() {
		return dob;
	}

	public void setDob(String[] dob) {
		this.dob = dob;
	}
	
	

	@Override
	public String toString() {
		return "InvoiceDetailForm [name=" + Arrays.toString(name) + ", gender=" + Arrays.toString(gender) + ", dob="
				+ Arrays.toString(dob) + "]";
	}

	@Override
	public BaseDTO getDTO() {
		InvoiceDetailDTO dto=new InvoiceDetailDTO();
			dto.setName(userName);
			dto.setUserId(userId);
			dto.setFlightNo(flightNo);
			dto.setInvoiceNo(DataUtility.getLong(invoiceNo));
		return dto;
	}

	@Override
	public void populate(BaseDTO bdto) {
		InvoiceDetailDTO dto=(InvoiceDetailDTO)bdto;
		userName=dto.getName();
		userId=dto.getUserId();
		flightNo=dto.getFlightNo();
		invoiceNo=String.valueOf(dto.getInvoiceNo());
	}

}
