package com.example.lab04;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path = "/lab4")
public class LabController {
  @GetMapping(path = "/add")
  public @ResponseBody String addUser(@RequestParam String name, @RequestParam String email) {
    User user = new User();

    user.setName(name);
    user.setEmail(email);

    return user.toString();
  }

  @GetMapping(path = "/addDomainObject")
  public @ResponseBody String addDomainObject(@RequestParam String type, @RequestParam String format) {
    CDomainClass domain = new CDomainClass();

    domain.setType(type);
    domain.setFormat(format);

    return domain.toString();
  }
}