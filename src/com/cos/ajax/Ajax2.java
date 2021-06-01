package com.cos.ajax;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/ajax2")
public class Ajax2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Ajax2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BufferedReader br = request.getReader(); // http body ������ �����ϰ� �б�
		String requestData = br.readLine();
		System.out.println(requestData);
		
		Gson gson = new Gson();
		// gson.fromJson() = json�� �ڹ� ������Ʈ��
		// gson.toJson() => �ڹٿ�����Ʈ�� json����
		UserDto userDto = gson.fromJson(requestData, UserDto.class);
		
		System.out.println(userDto);
		
		User user = new User();
		user.setId(1);
		user.setUsername("love");
		user.setPasword("1234");
		user.setPhone("0101111");
		
		String userJson = gson.toJson(user);
		System.out.println("userJson : " + userJson);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(userJson);
		out.flush();
	}

}
