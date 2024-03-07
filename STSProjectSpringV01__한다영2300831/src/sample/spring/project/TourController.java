package sample.spring.project;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.net.URLEncoder;

@Controller
//@WebServlet("/tourPro.do")
public class TourController {
	
	TourDAO dao = TourDAO.getInstance();
	
	String vId, vPwd, vName, vEmail, vPhone, vBirth;
	String vGueId, vGuePwd;
	
	@RequestMapping(value = "/index", method=RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("jsp/login");
	}
	
	@RequestMapping(value = "/frmLog", method=RequestMethod.GET)
	public ModelAndView frmLog(@RequestParam Map<String, Object> map) {
		String msg = "";
		
		vId = map.get("mem_id").toString(); //map.get("mem_id")은 Object형식이기 때문에 String형으로 바꿔줘야 함.
		vPwd = map.get("mem_pwd").toString(); //key값과 name값을 연결해놓음!
		vGueId = map.get("gue_id").toString();
		vGuePwd = map.get("gue_pwd").toString();
	
		TourDTO memDto = new TourDTO(vId, vPwd);
		int su = dao.tourLogin(memDto);
		
		String vLogChk = map.get("logChk").toString();
		String vNo =map.get("gue_no").toString();
		
		if (vLogChk.equals("UpdDelLogChk")) {		
			if(vGueId.equals(vId) && vGuePwd.equals(vPwd)) {
				
				ArrayList<ReviewDTO> dtoL = dao.reviewSelect(vNo);

				ModelAndView mav = new ModelAndView();
				mav.addObject("dtoL", dtoL);
				mav.setViewName("jsp/reviewUpd");
				
				return mav;
			}
		}

		if (su != 0) {
			msg = "로그인 성공";

			if (vLogChk.equals("writeLogChk")) {
				ModelAndView mav = new ModelAndView();
				mav.addObject("mem_id", vId);
				mav.addObject("mem_pwd", vPwd);
				mav.addObject("msg", msg);
				mav.setViewName("jsp/reviewWrite");
				
				return mav;
			} else {
				
			}			 

		} else {
			msg = "아이디 또는 비밀번호 정보가 일치하지 않습니다";
		}
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("index");
		
		return mav;
	}		
	
	@RequestMapping(value = "/insert", method=RequestMethod.GET)
	public ModelAndView insert() {
		return new ModelAndView("jsp/insert");
	}
	
	@RequestMapping(value = "/review", method=RequestMethod.GET)
	public ModelAndView review() {
		return new ModelAndView("jsp/review");
	}	
	
	@RequestMapping(value = "/airport", method=RequestMethod.GET)
	public ModelAndView airport() {
		return new ModelAndView("jsp/airport");
	}

	@RequestMapping(value = "/hotels", method=RequestMethod.GET)
	public ModelAndView hotels() {
		return new ModelAndView("jsp/hotels");
	}
	
	@RequestMapping(value = "/hotelsKor", method=RequestMethod.GET)
	public ModelAndView hotelsKor() {
		return new ModelAndView("jsp/hotelsKor");
	}
		
	@RequestMapping(value = "/Europe", method=RequestMethod.GET)
	public ModelAndView Europe() {
		return new ModelAndView("jsp/Europe");
	}
	
	@RequestMapping(value = "/EuropeGoods01", method=RequestMethod.GET)
	public ModelAndView EuropeGoods01() {
		return new ModelAndView("jsp/EuropeGoods01");
	}
	
	@RequestMapping(value = "/EuropeGoods02", method=RequestMethod.GET)
	public ModelAndView EuropeGoods02() {
		return new ModelAndView("jsp/EuropeGoods02");
	}	
	
	@RequestMapping(value = "/EuropeGoods03", method=RequestMethod.GET)
	public ModelAndView EuropeGoods03() {
		return new ModelAndView("jsp/EuropeGoods03");
	}	
	
	@RequestMapping(value = "/EuropeGoods04", method=RequestMethod.GET)
	public ModelAndView EuropeGoods04() {
		return new ModelAndView("jsp/EuropeGoods04");
	}		
	
	@RequestMapping(value = "/seAsia", method=RequestMethod.GET)
	public ModelAndView seAsia() {
		return new ModelAndView("jsp/seAsia");
	}
	
	@RequestMapping(value = "/seAsiaGoods01", method=RequestMethod.GET)
	public ModelAndView seAsiaGoods01() {
		return new ModelAndView("jsp/seAsiaGoods01");
	}	

	@RequestMapping(value = "/seAsiaGoods02", method=RequestMethod.GET)
	public ModelAndView seAsiaGoods02() {
		return new ModelAndView("jsp/seAsiaGoods02");
	}	
	
	@RequestMapping(value = "/seAsiaGoods03", method=RequestMethod.GET)
	public ModelAndView seAsiaGoods03() {
		return new ModelAndView("jsp/seAsiaGoods03");
	}	
	
	@RequestMapping(value = "/seAsiaGoods04", method=RequestMethod.GET)
	public ModelAndView seAsiaGoods04() {
		return new ModelAndView("jsp/seAsiaGoods04");
	}	
	
	
	@RequestMapping(value = "/japan", method=RequestMethod.GET)
	public ModelAndView japan() {
		return new ModelAndView("jsp/japan");
	}
	
	@RequestMapping(value = "/japanGoods01", method=RequestMethod.GET)
	public ModelAndView japanGoods01() {
		return new ModelAndView("jsp/japanGoods01");
	}	

	@RequestMapping(value = "/japanGoods02", method=RequestMethod.GET)
	public ModelAndView japanGoods02() {
		return new ModelAndView("jsp/japanGoods02");
	}	
	
	@RequestMapping(value = "/japanGoods03", method=RequestMethod.GET)
	public ModelAndView japanGoods03() {
		return new ModelAndView("jsp/japanGoods03");
	}	
	
	@RequestMapping(value = "/japanGoods04", method=RequestMethod.GET)
	public ModelAndView japanGoods04() {
		return new ModelAndView("jsp/japanGoods04");
	}	
	
	@RequestMapping(value = "/GuamSaipan", method=RequestMethod.GET)
	public ModelAndView GuamSaipan() {
		return new ModelAndView("jsp/GuamSaipan");
	}	
	
	@RequestMapping(value = "/GuamSaipanGoods01", method=RequestMethod.GET)
	public ModelAndView GuamSaipanGoods01() {
		return new ModelAndView("jsp/GuamSaipanGoods01");
	}	
	
	@RequestMapping(value = "/GuamSaipanGoods02", method=RequestMethod.GET)
	public ModelAndView GuamSaipanGoods02() {
		return new ModelAndView("jsp/GuamSaipanGoods02");
	}	
	
	@RequestMapping(value = "/GuamSaipanGoods03", method=RequestMethod.GET)
	public ModelAndView GuamSaipanGoods03() {
		return new ModelAndView("jsp/GuamSaipanGoods03");
	}
	
	@RequestMapping(value = "/GuamSaipanGoods04", method=RequestMethod.GET)
	public ModelAndView GuamSaipanGoods04() {
		return new ModelAndView("jsp/GuamSaipanGoods04");
	}		
	
	@RequestMapping(value = "/AustNew", method=RequestMethod.GET)
	public ModelAndView AustNew() {
		return new ModelAndView("jsp/AustNew");
	}	

	@RequestMapping(value = "/AustNewGoods01", method=RequestMethod.GET)
	public ModelAndView AustNewGoods01() {
		return new ModelAndView("jsp/AustNewGoods01");
	}	
	
	@RequestMapping(value = "/AustNewGoods02", method=RequestMethod.GET)
	public ModelAndView AustNewGoods02() {
		return new ModelAndView("jsp/AustNewGoods02");
	}	
	
	@RequestMapping(value = "/AustNewGoods03", method=RequestMethod.GET)
	public ModelAndView AustNewGoods03() {
		return new ModelAndView("jsp/AustNewGoods03");
	}	
	
	@RequestMapping(value = "/AustNewGoods04", method=RequestMethod.GET)
	public ModelAndView AustNewGoods04() {
		return new ModelAndView("jsp/AustNewGoods04");
	}	
	
	@RequestMapping(value = "/frmIns", method=RequestMethod.GET)
	public ModelAndView frmIns(@RequestParam Map<String, Object> map) {
		String msg = "";
		vId = map.get("mem_id").toString(); //map.get("mem_id")은 Object형식이기 때문에 String형으로 바꿔줘야 함.
		vPwd = map.get("mem_pwd").toString(); //key값과 name값을 연결해놓음!
		vName = map.get("mem_name").toString();
		vEmail = map.get("mem_email").toString();
		vPhone = map.get("mem_phone").toString();
		vBirth = map.get("mem_birth").toString();
	
		TourDTO memDto = new TourDTO(vId, vPwd);		
		
		memDto = new TourDTO(vId, vPwd, vName, vEmail, vPhone, vBirth);
		int su = dao.tourInsert(memDto);

		if (su != 0) {
			msg = "회원가입 성공";
		} else {
			msg = "회원가입 실패";
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("index");
		
		return mav;
	}		
	
	
	@RequestMapping(value = "/reviewList", method=RequestMethod.GET)
	public ModelAndView reviewList (@RequestParam Map<String, Object> map) {
		
		String nowPage = map.get("nowPage").toString(); 
		String nowBlock = map.get("nowBlock").toString();
		
		ArrayList<ReviewDTO> dtoL = dao.reviewSelect();
		
		if (nowPage != null) { 
			int recPerPage = 10; 
			int recOfBeginPage = Integer.parseInt(nowPage) * recPerPage; 
			dtoL = dao.reviewSelect(recOfBeginPage, (recOfBeginPage + recPerPage)); 
		}
		
		int totalRecord = dao.reviewCount();
		int recPerPage = 10; //페이지당 보여질 레코드 수
		int pagePerBlock = 10; //블럭당 보여질 페이지 
		int totalPage = (int)Math.ceil((double)totalRecord / recPerPage); //총 페이지 수
		int totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock); //총 블럭 수
		
		ModelAndView mav = new ModelAndView(); 
		
		mav.addObject("nowPage", nowPage); 
		mav.addObject("nowBlock", nowBlock);
		mav.addObject("totalRecord", totalRecord);
		mav.addObject("totalPage", totalPage);
		mav.addObject("totalBlock", totalBlock);
		mav.addObject("dtoL", dtoL); 
		mav.setViewName("jsp/review");
		
		return mav; 
	}
	 
	
	@RequestMapping(value = "/singleReview", method=RequestMethod.GET)
	public ModelAndView singleReview (@RequestParam Map<String, Object> map) {
		String vNo = map.get("gue_no").toString();
		ArrayList<ReviewDTO> dtoL = dao.reviewSelect(vNo);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("dtoL", dtoL); 
		mav.setViewName("jsp/singleReview");
		return mav; 
	}
	 
	@RequestMapping(value = "/reviewUpd", method=RequestMethod.GET)
	public ModelAndView reviewUpd (@RequestParam Map<String, Object> map) {
		String msg = "";
		String vNo = map.get("gue_no").toString();
		String vSubject = map.get("gue_subject").toString();
		String vContent = map.get("gue_content").toString();
		
		ReviewDTO dto = new ReviewDTO(vSubject, vContent);
		int su = dao.reviewUpdate(Integer.parseInt(vNo), dto);
		
		if(su != 0) {
			msg = "글 수정 성공";
		} else {
			msg = "글 수정 실패";
		}
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", msg); 
		mav.setViewName("jsp/review");
		return mav; 
	}	
	
	
	@RequestMapping(value = "/reviewWrite", method=RequestMethod.GET)
	public ModelAndView reviewWrite (@RequestParam Map<String, Object> map) {

		vId = map.get("gue_id").toString();
		vPwd = map.get("gue_pwd").toString(); 
		
		String vSubject = map.get("gue_subject").toString(); 
		String vContent = map.get("gue_content").toString();
				
		ReviewDTO dto = new ReviewDTO(vId, vPwd, vSubject, vContent);
		int su = dao.reviewWrite(dto);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/review");
		return mav; 
	}	
	
	@RequestMapping(value = "/packageTrip", method=RequestMethod.GET)
	public ModelAndView packageTrip() {
		return new ModelAndView("jsp/packageTrip");
	}
	
	@RequestMapping(value = "/travelInsurance", method=RequestMethod.GET)
	public ModelAndView travelInsurance() {
		return new ModelAndView("jsp/travelInsurance");
	}	
	@RequestMapping(value = "/introCom", method=RequestMethod.GET)
	public ModelAndView introCom() {
		return new ModelAndView("jsp/introCom");
	}		
}
