package kiv.spring.mvc.mvcweb.service;

import java.util.List;
import kiv.spring.mvc.mvcweb.entity.Quotation;
import kiv.spring.mvc.mvcweb.exception.ResourceNotFoundException;
import kiv.spring.mvc.mvcweb.repository.QuotationRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class QuotationServiceImpl implements QuotationService {

    @Autowired
    private QuotationRepository quotationRepository;

    @Override
    @Transactional
    public List<Quotation> getQuotations() {
        return quotationRepository.findAll();
    }

    @Override
    @Transactional
    public void saveQuotation(Quotation theQuotation) {
        quotationRepository.save(theQuotation);
    }

    @Override
    @Transactional
    public Quotation getQuotation(int id) throws ResourceNotFoundException {
        return quotationRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException(id));
    }

    @Override
    @Transactional
    public void deleteQuotation(int theId) {
        quotationRepository.deleteById(theId);
    }
}
