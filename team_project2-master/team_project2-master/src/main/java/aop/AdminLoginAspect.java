package aop;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import exception.LoginException;
import logic.User;


@Component
@Aspect
@Order(1)
public class AdminLoginAspect {
	@Around("execution(* controller.Admin*.*(..)) && args(userid,session)")
	public Object AdminCheck(ProceedingJoinPoint joinPoint,String userid, HttpSession session)
			throws Throwable {
		User adminUser = (User)session.getAttribute("adminUser");	
		if(adminUser == null) {
			throw new LoginException
			("로그인 후 이용하세요","../admin/manager_login.store");
		}		
		if(!adminUser.getUserid().equals(userid)) {
			throw new LoginException
			("자신의 정보만 조회 가능합니다.","../admin/manager_index.store");
		}
		Object ret = joinPoint.proceed();
		return ret;
	}
	@Around("execution(* controller.Admin*.manager*(..)) && args(access,userid,session)")
		public Object userIdCheck (ProceedingJoinPoint joinPoint,
				Integer access, String userid, HttpSession session) throws Throwable {
			User adminUser = (User)session.getAttribute("adminUser");
			if(adminUser == null) {
				throw new LoginException
				       ("로그인 후 이용하세요","../admin/manager_login.store");
			}
			if(!adminUser.getUserid().equals("admin")) {
				throw new LoginException
			       ("상위 관리자만 접근할 수 있는 페이지 입니다.","../admin/manager_index.store");
			}
			Object ret = joinPoint.proceed();
			return ret;
		}
}