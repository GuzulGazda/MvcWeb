package kiv.spring.mvc.mvcweb.controller;

import java.util.List;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import kiv.spring.mvc.mvcweb.entity.Quotation;
import kiv.spring.mvc.mvcweb.exception.ResourceNotFoundException;
import kiv.spring.mvc.mvcweb.service.QuotationService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/quotation")
public class QuotationController {

    private static final Logger LOG = LoggerFactory.getLogger(QuotationController.class);

    @Autowired
    private QuotationService quotationService;


    @GetMapping("/list")
    public String listQuotations(Model theModel, HttpServletRequest request) {
        List<Quotation> theQuotations = quotationService.getQuotations();
        Locale curLocale = (Locale) request.getAttribute("org.springframework.web.servlet.i18n.CookieLocaleResolver.LOCALE");
        theModel.addAttribute("curLocale", curLocale);
        theModel.addAttribute("quotations", theQuotations);
        return "list-quotations";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        LOG.debug("inside show quotation-form handler method");
        Quotation theQuotation = new Quotation();
        theModel.addAttribute("quotation", theQuotation);
        return "quotation-form";
    }

    @PostMapping("/saveQuotation")
    public String saveQuotation(@ModelAttribute("quotation") Quotation theQuotation) {
        quotationService.saveQuotation(theQuotation);
        return "redirect:/quotation/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("quotationId") int theId,
            Model theModel) throws ResourceNotFoundException {
        Quotation theQuotation = quotationService.getQuotation(theId);
        theModel.addAttribute("quotation", theQuotation);
        return "quotation-form";
    }

    @GetMapping("/delete")
    public String deleteQuotation(@RequestParam("quotationId") int theId) throws ResourceNotFoundException {
        quotationService.deleteQuotation(theId);
        return "redirect:/quotation/list";
    }
    
}
