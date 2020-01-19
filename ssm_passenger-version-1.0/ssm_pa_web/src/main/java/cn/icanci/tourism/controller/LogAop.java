package cn.icanci.tourism.controller;

import cn.icanci.tourism.domain.SysLog;
import cn.icanci.tourism.service.ISysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;

/**
 * @Author: icanci
 * @ProjectName: ssm_passenger
 * @PackageName: cn.icanci.tourism.controller
 * @Date: Created in 2020/1/18 22:16
 * @ClassAction: AOP
 */
@Component
@Aspect
public class LogAop {

    private Date visitTime; //开始时间
    private Class clazz; //访问的类
    private Method method; //访问的方法
    @Autowired
    private HttpServletRequest req;
    @Autowired
    private ISysLogService sysLogService;

    /**
     * 前置通知 获取开始时间 执行是那个方法
     *
     * @param jp
     */
    @Before("execution(* cn.icanci.tourism.controller.*.*(..))")
    public void doBefore(JoinPoint jp) {
        //当前时间就是 开始时间
        visitTime = new Date();
        // 获取是那个类
        clazz = jp.getTarget().getClass();
        //获取具体的方法
        String methodName = jp.getSignature().getName();
        Object[] args = jp.getArgs();
        if (args == null || args.length == 0) {
            try {
                method = clazz.getMethod(methodName);  //只能获取无参数的方法
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            }
        } else {
            try {
                Class[] classArgs = new Class[args.length];
                for (int i = 0; i < args.length; i++) {
                    System.out.println("-------------------------------------------------");
                    System.out.println(args.length);
                    System.out.println("-------------------------------------------------");
                    classArgs[i] = args[i].getClass();
                }
                clazz.getMethod(methodName, classArgs);
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            }
        }

    }

    /**
     * 后置通知
     *
     * @param jp
     */
    @After("execution(* cn.icanci.tourism.controller.*.*(..))")
    public void doAfter(JoinPoint jp) {
        //获取了访问的时长
        System.out.println(visitTime.getTime());
        long time = new Date().getTime() - visitTime.getTime();
        System.out.println(time);
        String url = "";
        //获取 url
        if (clazz != null && method != null && clazz != SysLog.class) {
            //获取类上的注解
            RequestMapping ClassAnnotation = (RequestMapping) clazz.getAnnotation(RequestMapping.class);
            if (ClassAnnotation != null) {
                String[] classValue = ClassAnnotation.value();
                //2.获取方法上的值
                RequestMapping methodAnnotation = method.getAnnotation(RequestMapping.class);
                if (methodAnnotation != null) {
                    String[] methodValue = methodAnnotation.value();
                    url = classValue[0] + methodValue[0];
                    //获取访问ip地址
                    String ip = req.getRemoteAddr();
                    //获取当前用户的 名称
                    SecurityContext context = SecurityContextHolder.getContext(); //从上下文获取对象
                    User user = (User) context.getAuthentication().getPrincipal();
                    String username = user.getUsername();

                    if ("/sysLog/findAll.do".equals(url)) {
                        //结束方法
                        return;
                    }

                    SysLog sysLog = new SysLog();
                    sysLog.setExecutionTime(time);
                    sysLog.setIp(ip);
                    sysLog.setUrl(url);
                    sysLog.setUsername(username);
                    sysLog.setVisitTime(visitTime);
                    sysLog.setMethod("[类名] " + clazz.getName() + " [方法名] " + method.getName());
                    //调用Service
                    sysLogService.addSysLog(sysLog);
                }
            }
        }

    }
}
