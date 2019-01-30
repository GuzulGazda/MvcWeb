package kiv.spring.mvc.mvcweb.repository;

import kiv.spring.mvc.mvcweb.entity.Quotation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository("quotationRepository")
public interface QuotationRepository extends JpaRepository<Quotation, Integer> {

}
