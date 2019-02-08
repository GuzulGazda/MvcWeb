package kiv.spring.mvc.mvcweb.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class AdviceController {

    @RequestMapping(value = {"/404"}, method = RequestMethod.GET)
    public String NotFoudPage() {
        //TODO there is duplication
        return "404";
    }


    @ExceptionHandler(NoHandlerFoundException.class)
    public String handle(Exception ex) {
        return "404";
    }

}