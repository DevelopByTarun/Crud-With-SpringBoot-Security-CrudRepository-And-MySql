package com.app.MavenSpringBootMvcAopOrmSecurityCrudWithLog4jJpaCrudRepositoryAndMysql.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.app.MavenSpringBootMvcAopOrmSecurityCrudWithLog4jJpaCrudRepositoryAndMysql.modal.CustomerDTO;

@Repository
public interface CustomerRepository extends CrudRepository<CustomerDTO, Integer> {

}
