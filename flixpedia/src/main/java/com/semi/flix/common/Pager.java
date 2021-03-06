package com.semi.flix.common;


import javax.servlet.http.HttpServletRequest;

//  <%=Pager.makeTag(request, 10, 32)%>


public class Pager {
		
	
	//<a href= .....
	public static String makeTag(HttpServletRequest request , int pageSize , int total) {
		
		//request 객체가 있어야 pg, key, keyword 등의 정보를 가져올 수 있다 
		//pageSize -  한 페이지당 출력할 데이터 개수 
		//total -  전체데이개수 
		//페이지숫자 - total/pageSize    12/10 -> 강제올림함수 ceil함수(1.2 -> 2
		
		String Tag = "" ; 
		String contextPath = request.getContextPath();
		
		// << < 1 2 3 4 5 6 7 8 9 10 > >> 
		
		int cpage; //�쁽�옱�럹�씠吏� �젙蹂� - board/list?pg=1  pg 媛믪쓣   cpage濡� 泥섎━�븳�떎
		// 12/10 -> ceiling(1.2) -> 2   
		int pageTotal; //�쟾泥� �럹�씠吏� 媛쒖닔 
		int pageGroupSize = 5; //洹몃９�쓽 媛쒖닔 - �븳 �솕硫댁뿉 �굹���궪 �럹�씠吏� 理쒕� 媛쒖닔
		
		//1 ~ 5
		//6 ~ 10
		//11 ~ 15
		int pageGroupStart; //1,6,11,16,... 洹몃９�쓽 �떆�옉媛� 
		int pageGroupEnd;   //5,10,15,....  洹몃９�쓽 醫낅즺媛�

		String path="";
		//System.out.println(path);
		String beginLabel 	= "first";//image  �깭洹�
		String prevLabel 	= "previous"; 
		String nextLabel 	= "next";
		String endLabel 	= "last";	

		
		try {

			StringBuffer sb = new StringBuffer();
			
			//http://localhost:9000/myhome/freeboard.do?pg=1
			
			String page = request.getParameter("pg"); // /board/list?pg=1
			page = ( page == null ) ? "0" : page;  //null媛� 泥섎━  
			

			cpage = Integer.parseInt(page) ; 

			pageTotal = (int)Math.ceil((total - 1) / pageSize);
			//�럹吏�吏� 媛쒖닔 : �쟾泥� �뜲�씠�꽣 媛쒖닔 123媛� 
			//�븳 �럹�씠吏��떦 10媛쒖뵫 : pageSize=10
			// 123/10 -> 12.3 =>  �삱由� => 13
            
			// 17 /5 - 3 *5  15    20 
			pageGroupStart = (int) (cpage / pageGroupSize) * pageGroupSize;
			pageGroupEnd = pageGroupStart + pageGroupSize;
			
		
			if (pageGroupEnd > pageTotal) {
				pageGroupEnd = pageTotal + 1;
			}
            //0~4, 5~9, 10~14, 15~19
				 
			boolean hasPreviousPage = cpage - pageGroupSize >= 0;
			//�씠�쟾�럹�씠吏�濡� 媛덇쾶 �엳�뒗媛� �뿬遺�  << < 1 2 3 4 5 > >>
			boolean hasNextPage = pageGroupStart + pageGroupSize < pageTotal;
			//�떎�쓬�럹�씠吏�濡� 媛� �닔 �엳�뒗媛� �뿬遺� 
			
			sb.append("<ul class='paginator'>\r\n") ;  
			
			//  <<  < 
			/*첫번째 페이지로
			 * sb.append((cpage > 0) ? makeLink(0, beginLabel) :
			 * "<li class='paginator__item paginator__item--prev'><a href='#'><i class='icon ion-ios-arrow-back'></i></a></li>\r\n"
			 * );
			 */
			sb.append(hasPreviousPage ? makeLink(pageGroupStart - 1, prevLabel) : 
				"<li class='paginator__item paginator__item--prev'><a href='#'><i class='icon ion-ios-arrow-back'></i></a></li>\r\n");
			
			for (int i = pageGroupStart; i < pageGroupEnd; i++) {
				if (i == cpage) {//�쁽�옱�럹�씠吏�
					sb.append(makeActiveLink(i, (i + 1) + "") 
						
							);
				} else {
					sb.append(makeLink(i, (i + 1) + ""));
				}
			}
			

			sb.append(hasNextPage ? makeLink(pageGroupEnd, nextLabel) : 
				"<li class=\"paginator__item paginator__item--next\">\r\n"
				+ "							<a href=\"#\"><i class=\"icon ion-ios-arrow-forward\"></i></a>\r\n"
				+ "						</li>\r\n");
			/*마지막 페이지 넘어가기 버튼
			 * sb.append((cpage < pageTotal) ? makeLink(pageTotal, endLabel) :
			 * "<li class=\"page-item\"><a class=\"page-link\"  href='#'>"+endLabel+
			 * "</a></li>\r\n");
			 */
		
			sb.append("</ul>\r\n") ;  		
			Tag = sb.toString() ; 	
		} catch ( Exception e ) {
			e.printStackTrace() ; 
		}
			
		return Tag ; 
	}

	public static String makeLink(int page, String label) 
	{
		StringBuffer tmp = new StringBuffer();
		tmp.append("<li class=\"paginator__item\"><a href=\"javascript:goPage('" + page + "')\">").append(label).append("</a></li>\r\n");
		return tmp.toString();
	}
	
	
	public static String makeActiveLink(int page, String label) 
	{
		StringBuffer tmp = new StringBuffer();
		tmp.append("<li class=\"paginator__item paginator__item--active\"><a href=\"javascript:goPage('" + page + "')\">").append(label).append("</a></li>\r\n");
		return tmp.toString();
	}

	
}
