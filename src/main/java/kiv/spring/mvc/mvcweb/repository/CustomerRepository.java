package kiv.spring.mvc.mvcweb.repository;

import kiv.spring.mvc.mvcweb.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository("customerRepository")
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

}
