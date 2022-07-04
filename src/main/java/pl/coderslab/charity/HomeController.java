package pl.coderslab.charity;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.repository.CategoryRepository;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.repository.InstitutionRepository;

@AllArgsConstructor
@Controller
public class HomeController {


    private final DonationRepository donationRepository;
    private final InstitutionRepository institutionRepository;
    private final CategoryRepository categoryRepository;

    @RequestMapping("/")
    public String homeAction(Model model) {
        model.addAttribute("bags", donationRepository.sumAllByQuantity());
        model.addAttribute("donations", donationRepository.count());
        model.addAttribute("categories", categoryRepository.findAll());
        model.addAttribute("institutions", institutionRepository.findAll());
        return "index";

        //repo donation
    }
    @GetMapping("/about")
    public String aboutAction(){
        return "about";
    }

    @GetMapping("/help")
    public String whoAction(Model model){
        model.addAttribute("help", institutionRepository.findAll());
        return "help";
    }

    @GetMapping("/steps")
    public String whatIsItAllAboutAction(){
        return "steps";
    }

    @GetMapping("/contact")
    public String contactAction(){
        return "contact";
    }
    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @GetMapping("/register")
    public  String register(){
        return "register";
    }
    @GetMapping("/formConfirmation")
        public String formConfirmation(){
        return "formConfirmation";
    }

    @GetMapping("/stats")
    public String stats(){
        return "stats";
    }


}