/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kiv.spring.mvc.mvcweb.controller;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import kiv.spring.mvc.mvcweb.entity.Quotation;
import kiv.spring.mvc.mvcweb.exception.ResourceNotFoundException;
import kiv.spring.mvc.mvcweb.service.QuotationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @Autowired
    private QuotationService quotationService;

    @GetMapping("/")
    public ModelAndView getTestData(HttpSession session, HttpServletRequest request) throws ResourceNotFoundException {
        ModelAndView mv = new ModelAndView();
//        Quotation quotationToShow = quotationService.getRandomQuotation();
//        
//        mv.getModel().put("quotationToShow", quotationToShow);
        
        Map<String, String> localeChoices = new LinkedHashMap<>();
        Locale l = Locale.US;
        localeChoices.put(l.getLanguage(), l.getDisplayLanguage());
        l = new Locale("ua", "UA");
        localeChoices.put(l.getLanguage(), l.getDisplayLanguage());
        mv.getModel().put("localeChoices", localeChoices);
        
        
        mv.setViewName("welcome");
        return mv;
    }
}
