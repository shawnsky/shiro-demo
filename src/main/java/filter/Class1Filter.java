package filter;/**
 * Created by Administrator on 2017/6/16.
 */

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;


import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Administrator
 *
 * @author xt
 *         06-16 14:10
 **/
public class Class1Filter extends AccessControlFilter {
    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        Subject subject = SecurityUtils.getSubject();
        return subject.isPermitted("user:create")&&
                subject.isPermitted("user:update")&&
                subject.isPermitted("user:view");
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        WebUtils.issueRedirect(request, response, "unauthorized.jsp");
        return false;
    }
}
