package com.app.MavenSpringBootMvcAopOrmSecurityCrudWithLog4jJpaCrudRepositoryAndMysql.modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

@Entity
@Table(name = "Customer_SpringBootMvcAopOrmSecurityCrud_JpaCrudRepo")
public class CustomerDTO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE , generator="customer_id_generator")
	@TableGenerator(
			name = "customer_id_generator",
			table = "Customer_JpaCrudRepo_Id_Generator",
			pkColumnName = "myid",
			valueColumnName = "next",
			pkColumnValue = "course",
			allocationSize = 1
			)
	@Column(name = "customer_id", precision = 4, nullable = false)
	private int id;
	
	@Column(name = "customer_name", length = 15, insertable = true, updatable = true, nullable = false)
	private String name;
	
	@Column(name = "customer_age", precision = 4, insertable = true, updatable = true, nullable = false)
	private int age;
	
	@Column(name = "customer_city", length = 15, insertable = true, updatable = true, nullable = false)
	private String city;
	
	@Column(name = "customer_country", length = 15, insertable = true, updatable = true, nullable = false)
	private String country;
	
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the age
	 */
	public int getAge() {
		return age;
	}

	/**
	 * @param age the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}
}
