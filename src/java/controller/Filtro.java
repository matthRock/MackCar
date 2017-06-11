package controller;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(filterName = "Filtro", urlPatterns = {"/*"})
public class Filtro implements Filter {
    
       
    public void doFilter(ServletRequest request, ServletResponse response,FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String url = httpServletRequest.getRequestURI();
        HttpSession sessao = httpServletRequest.getSession();

        if (sessao.getAttribute("clienteAutenticado")!=null || url.lastIndexOf("loginCadastro.jsp")>-1 ||
            url.lastIndexOf("Autenticador") >-1 ){
            chain.doFilter(request, response); 
	}else{
	    ((HttpServletResponse) response).sendRedirect("loginCadastro.jsp");
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void destroy() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
        
}


       
        
    

