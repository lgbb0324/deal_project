package com.project.category;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("categoryController")
public class CategoryController {
	 
	@RequestMapping(value="/deal/manCloth",method=RequestMethod.GET)
	public ModelAndView manCloth() throws Exception {
		String msg = "manCloth";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		
		return mav;
	}
	
	@RequestMapping(value="/deal/womanCloth",method=RequestMethod.GET)
	public ModelAndView womanCloth() throws Exception {
		String msg = "womanCloth";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/childCloth",method=RequestMethod.GET)
	public ModelAndView childCloth() throws Exception {
		String msg = "childCloth";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/accessaryCloth",method=RequestMethod.GET)
	public ModelAndView accessaryCloth() throws Exception {
		String msg = "accessaryCloth";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/EtcCloth",method=RequestMethod.GET)
	public ModelAndView EtcCloth() throws Exception {
		String msg = "EtcCloth";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/skinBeauty",method=RequestMethod.GET)
	public ModelAndView skinBeauty() throws Exception {
		String msg = "skinBeauty";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/makeupBeauty",method=RequestMethod.GET)
	public ModelAndView makeupBeauty() throws Exception {
		String msg = "makeupBeauty";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/hairBeauty",method=RequestMethod.GET)
	public ModelAndView hairBeauty() throws Exception {
		String msg = "hairBeauty";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/bodyBeauty",method=RequestMethod.GET)
	public ModelAndView bodyBeauty() throws Exception {
		String msg = "bodyBeauty";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/perfumeBeauty",method=RequestMethod.GET)
	public ModelAndView perfumeBeauty() throws Exception {
		String msg = "perfumeBeauty";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/farmGrocery",method=RequestMethod.GET)
	public ModelAndView farmGrocery() throws Exception {
		String msg = "farmGrocery";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/processedGrocery",method=RequestMethod.GET)
	public ModelAndView processedGrocery() throws Exception {
		String msg = "processedGrocery";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/healthGrocery",method=RequestMethod.GET)
	public ModelAndView healthGrocery() throws Exception {
		String msg = "healthGrocery";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/childGrocery",method=RequestMethod.GET)
	public ModelAndView childGrocery() throws Exception {
		String msg = "childGrocery";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/waterGrocery",method=RequestMethod.GET)
	public ModelAndView waterGrocery() throws Exception {
		String msg = "waterGrocery";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/cottonFurniture",method=RequestMethod.GET)
	public ModelAndView cottonFurniture() throws Exception {
		String msg = "cottonFurniture";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/tableFurniture",method=RequestMethod.GET)
	public ModelAndView tableFurniture() throws Exception {
		String msg = "tableFurniture";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/interiorFurniture",method=RequestMethod.GET)
	public ModelAndView interiorFurniture() throws Exception {
		String msg = "interiorFurniture";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/normalFurniture",method=RequestMethod.GET)
	public ModelAndView normalFurniture() throws Exception {
		String msg = "normalFurniture";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/kitchenFurniture",method=RequestMethod.GET)
	public ModelAndView kitchenFurniture() throws Exception {
		String msg = "kitchenFurniture";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/sportsLeisure",method=RequestMethod.GET)
	public ModelAndView sportsLeisure() throws Exception {
		String msg = "sportsLeisure";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/outdoorLeisure",method=RequestMethod.GET)
	public ModelAndView outdoorLeisure() throws Exception {
		String msg = "outdoorLeisure";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/campingLeisure",method=RequestMethod.GET)
	public ModelAndView campingLeisure() throws Exception {
		String msg = "campingLeisure";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/carLeisure",method=RequestMethod.GET)
	public ModelAndView carLeisure() throws Exception {
		String msg = "carLeisure";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/normalLeisure",method=RequestMethod.GET)
	public ModelAndView normalLeisure() throws Exception {
		String msg = "normalLeisure";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/cameraDigital",method=RequestMethod.GET)
	public ModelAndView cameraDigital() throws Exception {
		String msg = "cameraDigital";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/kitchenDigital",method=RequestMethod.GET)
	public ModelAndView kitchenDigital() throws Exception {
		String msg = "kitchenDigital";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/lifeDigital",method=RequestMethod.GET)
	public ModelAndView lifeDigital() throws Exception {
		String msg = "lifeDigital";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/pcDigital",method=RequestMethod.GET)
	public ModelAndView pcDigital() throws Exception {
		String msg = "pcDigital";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/phoneDigital",method=RequestMethod.GET)
	public ModelAndView phoneDigital() throws Exception {
		String msg = "phoneDigital";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/normalBook",method=RequestMethod.GET)
	public ModelAndView normalBook() throws Exception {
		String msg = "normalBook";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/ticketBook",method=RequestMethod.GET)
	public ModelAndView ticketBook() throws Exception {
		String msg = "ticketBook";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/travelBook",method=RequestMethod.GET)
	public ModelAndView travelBook() throws Exception {
		String msg = "travelBook";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/animalBook",method=RequestMethod.GET)
	public ModelAndView animalBook() throws Exception {
		String msg = "animalBook";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
	@RequestMapping(value="/deal/hobbyBook",method=RequestMethod.GET)
	public ModelAndView hobbyBook() throws Exception {
		String msg = "hobbyBook";
		ModelAndView mav=new ModelAndView(".category.categoryForm");
		mav.addObject("message",msg);
		return mav;
	}
	
}
