package kiv.spring.mvc.mvcweb.service;

import java.util.List;
import kiv.spring.mvc.mvcweb.entity.Quotation;
import kiv.spring.mvc.mvcweb.exception.ResourceNotFoundException;



public interface QuotationService {

	public List<Quotation> getQuotations();

	public void saveQuotation(Quotation theQuotation);

	public Quotation getQuotation(int theId) throws ResourceNotFoundException;

	public void deleteQuotation(int theId) throws ResourceNotFoundException;
        
        public Quotation getRandomQuotation() throws ResourceNotFoundException;
	
}
