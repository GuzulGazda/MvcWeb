package kiv.spring.mvc.mvcweb.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import kiv.spring.mvc.mvcweb.entity.Quotation;
import kiv.spring.mvc.mvcweb.service.QuotationService;
import kiv.spring.mvc.mvcweb.service.QuotationServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

@WebFilter("/*")
public class AddQuotationFilter implements Filter {
   
    private QuotationService service;

    @Override
    public void init(FilterConfig config) throws ServletException {
        // NOOP.
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if(service==null){
            ServletContext servletContext = request.getServletContext();
            WebApplicationContext webApplicationContext = WebApplicationContextUtils.getWebApplicationContext(servletContext);
            service = (QuotationService) webApplicationContext.getBean("quotationService");
        }
        Quotation quotationToShow = service.getRandomQuotation();
        request.setAttribute("quotationToShow", quotationToShow);

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // NOOP.
    }
}
