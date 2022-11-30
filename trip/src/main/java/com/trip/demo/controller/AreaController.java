package com.trip.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AreaController {

    @GetMapping(value = "/moon")
    public String moon()throws Exception{
        return "area1/moon";
    }

    @GetMapping(value = "/dehack")
    public String dehack()throws Exception{
        return "area1/dehack";
    }

    @GetMapping(value = "/hong")
    public String hong()throws Exception{
        return "area1/hong";
    }
    @GetMapping(value = "/kun")
    public String kun()throws Exception{
        return "area1/kun";
    }
    @GetMapping(value = "/market")
    public String market()throws Exception{
        return "area1/market";
    }
    @GetMapping(value = "/namsan")
    public String namsan()throws Exception{
        return "area1/namsan";
    }
    @GetMapping(value = "/sungsu")
    public String sungsu()throws Exception{
        return "area1/sungsu";
    }
    @GetMapping(value = "/ziro")
    public String ziro()throws Exception{
        return "area1/ziro";
    }


}
