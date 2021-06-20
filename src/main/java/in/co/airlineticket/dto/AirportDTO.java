package in.co.airlineticket.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "AIRPORT")
public class AirportDTO extends BaseDTO {

	@Column( name = "CODE", unique = true, length = 225)	
	private String code;
	@Column(name = "NAME", length = 225)
	private String name;
	@Column(name = "COUNTRY", length = 225)
	private String country;
	@Column(name = "STATE", length = 225)
	private String state;
	@Column(name = "CITY", length = 225)
	private String city;
	@Column(name = "ADDRESS", length = 225)
	private String address;

	public AirportDTO() {

	}

	@Override
	public String toString() {
		return "AirportDTO [code=" + code + ", name=" + name + ", country=" + country + ", state=" + state + ", city="
				+ city + ", address=" + address + ", id=" + id + "]";
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String getKey() {
		return String.valueOf(id);
	}

	@Override
	public String getValue() {
		return name;
	}

}
