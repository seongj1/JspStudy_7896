<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
    <% 
    String[] subject = request.getParameterValues("subject");
    String[] grade = request.getParameterValues("grade");
    String[] time = request.getParameterValues("time");
    
    double score = 0;
    int totalTime = 0;
    double gradeAvg = 0;
    
    for(int i = 0; i < subject.length; i++){
    	totalTime +=  Integer.parseInt(time[i]);
    	
    	if(grade[i].equals("A+")){
    		score += (4.5*Integer.parseInt(time[i]));
    	}else if(grade[i].equals("A")){
    		score += (4.5*Integer.parseInt(time[i]));
    	}else if(grade[i].equals("B+")){
    		score += (4.5*Integer.parseInt(time[i]));
    	}else if(grade[i].equals("B")){
    		score += (4.5*Integer.parseInt(time[i]));
    	}else if(grade[i].equals("C+")){
    		score += (4.5*Integer.parseInt(time[i]));
    	}else if(grade[i].equals("C")){
    		score += (4.5*Integer.parseInt(time[i]));
    	}else if(grade[i].equals("D+")){
    		score += (4.5*Integer.parseInt(time[i]));
    	}else if(grade[i].equals("D")){
    		score += (4.5*Integer.parseInt(time[i]));
    	}else if(grade[i].equals("F")){
    		
    	}else{
    		score += 0;
    	}
    }
    
    gradeAvg = score / totalTime;
    
    StringBuilder builder = new StringBuilder();
    builder.append("<body>");
    builder.append("<script>");
    builder.append("<alert(\"총 평점:"+gradeAvg+"\");>");
    builder.append("<history.back();>");
    builder.append("</script>");
    builder.append("</body>");
    
    %>