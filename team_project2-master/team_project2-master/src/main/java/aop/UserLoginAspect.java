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
public class UserLoginAspect {
	@Around("execution(* controller.MypageCo*.check*(..)) && args(..,session)") 
	public Object userLoginCheck(ProceedingJoinPoint joinPoint, HttpSession session) throws Throwable{
		User loginUser = (User)session.getAttribute("loginUser");
		
		if(loginUser == null) {
			throw new LoginException("로그인 후 거래하세요", "../user/signin.store");
			// 로그아웃 상태일때 main을 접근하면 강제로 에러를 발생시킴 
						//joinPoint부분으로 갈수 없음 
		}
		Object ret = joinPoint.proceed(); 
		return ret;
		
	}
}
