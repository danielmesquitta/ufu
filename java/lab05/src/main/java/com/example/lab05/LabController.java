package com.example.lab05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path = "/lab5")
public class LabController {
  @Autowired
  private UserRepository userRepository;

  @Autowired
  private ClientRepository clientRepository;

  @GetMapping(path = "/add")
  public @ResponseBody String addUser(@RequestParam String name, @RequestParam String email) {
    User n = new User();
    n.setName(name);
    n.setEmail(email);

    userRepository.save(n);

    return "User Saved";
  }

  @GetMapping(path = "/all")
  public @ResponseBody Iterable<User> getAllUsers() {
    return userRepository.findAll();
  }

  @GetMapping(path = "/add-client")
  public @ResponseBody String addClient(@RequestParam String name, @RequestParam String email) {
    Client n = new Client();
    n.setName(name);
    n.setEmail(email);

    clientRepository.save(n);

    return "Client Saved";
  }

  @GetMapping(path = "/all-client")
  public @ResponseBody Iterable<Client> getAllClients() {
    return clientRepository.findAll();
  }
  

}