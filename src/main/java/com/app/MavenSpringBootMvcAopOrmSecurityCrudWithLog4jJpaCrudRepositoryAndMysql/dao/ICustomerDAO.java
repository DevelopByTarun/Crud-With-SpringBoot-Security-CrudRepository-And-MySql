package com.app.MavenSpringBootMvcAopOrmSecurityCrudWithLog4jJpaCrudRepositoryAndMysql.dao;

import java.util.ArrayList;
import com.app.MavenSpringBootMvcAopOrmSecurityCrudWithLog4jJpaCrudRepositoryAndMysql.modal.CustomerDTO;

public interface ICustomerDAO {
	
	public void addCustomer(CustomerDTO customer) throws Exception;
	
	public void updateCustomer(CustomerDTO customer) throws Exception;
	
	public void deleteCustomer(CustomerDTO customer) throws Exception;
	
	public CustomerDTO getCustomerById(int id) throws Exception;
	
	public ArrayList<CustomerDTO> getAllCustomers() throws Exception;
}
