package com.semi.flix.member;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	
	@Resource(name="memberService")
	MemberService memberService;
	
	//ȸ������ ������ �̵�
	@RequestMapping("member/signup")
	String signup() {
		return "member/signup";
		//src/main/webapp/WEB-INF/view/test.jsp�� ������
	}
	
	//�ּ� �Է� �˾�â
	@RequestMapping("/member/jusoPopup")
	String jusoPopup() {
		return "member/jusoPopup";
		//src/main/webapp/WEB-INF/view/test.jsp�� ������
	}
	
	//ȸ������ ����
	@RequestMapping(value="/member/insert", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> member_insert(MemberDto dto)
	{
		System.out.println("userid : " + dto.getUser_id());
		memberService.insert(dto);
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("result", "success");
		return map;
	}
	
	
	//���̵� �ߺ�Ȯ��
	@RequestMapping("/member/isDuplicate")
	@ResponseBody  //Ajax��û�� ����Ÿ�� ��µǾ� �Ѵ�.jsp �̵��� ���´� 
	               //�ڹٰ�ü��  json ���·� ��ȯ���Ѽ� ��ȯ�Ѵ� 
	public HashMap<String, String> member_isDuplicate(MemberDto dto)
	{
		System.out.println("userid : " + dto.getUser_id());
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("result", memberService.isDuplicate(dto)+"");
		
		return map;
	}
	
	
	//�α���
	@RequestMapping(value="/member/signin")
	public String member_login()
	{
		return "member/signin";
	}
	
	//�α��� �۵�
	@RequestMapping(value="/member/login_proc")
	@ResponseBody
	public HashMap<String, String> member_login_proc(MemberDto dto, HttpServletRequest request)
	{
		//�� ���������� ���� ������ �ȵȴ�. 
		//����(��Ű �Ǵ� ����- ������ ����Ѵ�.)
		//��Ű - ������ǻ�Ϳ� session- ������(������ ��ȭ��Ű���� �Ҷ�(
		HttpSession session = request.getSession();
		
		MemberDto resultDto = memberService.getInfo(dto);
		HashMap<String, String> map = new HashMap<String, String>();
		
		System.out.println(resultDto);
		
		if(resultDto==null)
		{
			map.put("flag", "2");	
		}
		else
		{
			if(resultDto.getPassword().equals(dto.getPassword()))
			{
				map.put("flag", "1"); //�α׿� ������ ���ǿ� ������ �����Ѵ� 
				session.setAttribute("userid", resultDto.getUser_id());
				session.setAttribute("username", resultDto.getName());
				session.setAttribute("email", resultDto.getEmail());
				session.setAttribute("phone", resultDto.getPhone());
			}
			else
			{
				map.put("flag", "3");
			}
		}
		
		
		return map;
	}
	
	//�α׾ƿ�
	@RequestMapping(value="/member/logout")
	public String member_logout(HttpServletRequest request)
	{
	
		HttpSession session = request.getSession();
		session.invalidate(); //������ ������ ���� 
		
		return "redirect:/";
	}
	
	//���̵� ã�� ������ �̵� 
	@RequestMapping(value="/member/findid")
	public String member_findid()
	{	
		return "member/member_findid";
	}
	
	//���ã�� ������ �̵�
	@RequestMapping(value="/member/findpassword")
	public String member_findpassword()
	{	
		return "member/member_findpassword";
	}
	
	//��й�ȣã��
	@RequestMapping(value="/member/findpass_proc")
	@ResponseBody
	public HashMap<String, String> member_findpass_proc(MemberDto dto)
	{	
		MemberDto findDto = memberService.findPassword(dto);
		HashMap map = new HashMap<String, String>();
		if (findDto==null)
			map.put("result", "fail");
		else
		{
			map.put("result", findDto.getPassword());
			map.put("userid", findDto.getUser_id());
			map.put("username", findDto.getName());
		}
		return map;
	}
	
	//���̵�ã��
	@RequestMapping(value="/member/findid_proc")
	@ResponseBody
	public HashMap<String, String> member_findid_proc(MemberDto dto)
	{	
		MemberDto findDto = memberService.findId(dto);
		HashMap map = new HashMap<String, String>();
		if (findDto==null)
			map.put("result", "fail");
		else
		{
			map.put("result", findDto.getUser_id());
			map.put("userid", findDto.getUser_id());
			map.put("username", findDto.getName());
		}
		return map;
	}
	
}
