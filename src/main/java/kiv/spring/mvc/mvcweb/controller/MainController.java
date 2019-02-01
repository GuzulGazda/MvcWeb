/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kiv.spring.mvc.mvcweb.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import kiv.spring.mvc.mvcweb.entity.Quotation;
import kiv.spring.mvc.mvcweb.exception.ResourceNotFoundException;
import kiv.spring.mvc.mvcweb.service.QuotationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @Autowired
    private QuotationService quotationService;

    @GetMapping("/")
    public ModelAndView getTestData(HttpSession session, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        Quotation quotation;
        try {
            quotation = quotationService.getRandomQuotation();
        } catch (ResourceNotFoundException ex) {
            // add default quotation
            // TODO
            quotation = new Quotation();
            quotation.setAuthor("Coco Chanel");
            quotation.setMessage("Success is most often achieved by those who don't know that failure is inevitable.");
            Logger.getLogger(MainController.class.getName()).log(Level.SEVERE, null, ex);
        }
        mv.getModel().put("quotation", quotation);
        
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
