package kiv.spring.mvc.mvcweb.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/quotation")
public class QuotationController {

    private static final Logger LOG = LoggerFactory.getLogger(QuotationController.class);

    @Autowired
    private QuotationService quotationService;

    @GetMapping("/list")
    public ModelAndView listQuotations(Model theModel, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        List<Quotation> quotations = quotationService.getQuotations();
        mv.getModel().put("quotations", quotations);
        addQuotation(mv);
        addLocale(mv);
        mv.setViewName("list-quotations");
        return mv;
    }

    @GetMapping("/showForm")
    public ModelAndView showFormForAdd(Model theModel) {
        ModelAndView mv = new ModelAndView();
        addQuotation(mv);
        addLocale(mv);
        Quotation quotation = new Quotation();
        mv.getModel().put("quotation", quotation);
        mv.setViewName("quotation-form");
        return mv;
    }

    @PostMapping("/saveQuotation")
    public String saveQuotation(HttpServletRequest request, @ModelAttribute("quotation") Quotation theQuotation) {
        quotationService.saveQuotation(theQuotation);
        return "redirect:/quotation/list";
    }

    @GetMapping("/updateForm")
    public ModelAndView showFormForUpdate(@RequestParam("quotationId") int theId, HttpServletRequest request,
            HttpServletResponse response) throws ResourceNotFoundException {
        
        response.setCharacterEncoding("UTF-8");
        Quotation theQuotation = quotationService.getQuotation(theId);
        // TODO - how to update Quotation?
        ModelAndView mv = new ModelAndView();
        addQuotation(mv);
        addLocale(mv);
        mv.getModel().put("quotation", theQuotation);
        mv.setViewName("quotation-form");
        return mv;
    }

    @GetMapping("/delete")
    public String deleteQuotation(@RequestParam("quotationId") int theId) throws ResourceNotFoundException {
        quotationService.deleteQuotation(theId);
        return "redirect:/quotation/list";
    }

    private void addLocale(ModelAndView mv) {
        Map<String, String> localeChoices = new LinkedHashMap<>();
        Locale l = Locale.US;
        localeChoices.put(l.getLanguage(), l.getDisplayLanguage());
        l = new Locale("ua", "UA");
        localeChoices.put(l.getLanguage(), l.getDisplayLanguage());
        mv.getModel().put("localeChoices", localeChoices);
    }

    private void addQuotation(ModelAndView mv) {
        Quotation quotationToShow;
        try {
            quotationToShow = quotationService.getRandomQuotation();
        } catch (ResourceNotFoundException ex) {
            // add default quotation
            // TODO
            quotationToShow = new Quotation();
            quotationToShow.setAuthor("Coco Chanel");
            quotationToShow.setMessage("Success is most often achieved by those who don't know that failure is inevitable.");
            java.util.logging.Logger.getLogger(MainController.class.getName()).log(Level.SEVERE, null, ex);
        }
        mv.getModel().put("quotationToShow", quotationToShow);
    }

}
