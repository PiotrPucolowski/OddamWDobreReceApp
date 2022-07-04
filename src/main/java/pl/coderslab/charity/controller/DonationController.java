package pl.coderslab.charity.controller;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.charity.model.Category;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.model.Institution;
import pl.coderslab.charity.repository.CategoryRepository;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.repository.InstitutionRepository;

import java.util.List;

/*
Rolą kontrolera będzie wyświetlenie oraz obsługa formularza dodawania darów.

 */
@Controller
@AllArgsConstructor
public class DonationController {
    private final DonationRepository donationRepository;
    private final CategoryRepository categoryRepository;
    private final InstitutionRepository institutionRepository;

//    @RequestMapping(value = "/form", method = RequestMethod.POST)
//    public String addDonation(@ModelAttribute("form") Model model,
//                              BindingResult result){
//        model.addAttribute("donation", new Donation());
//        return "formConfirmation";
//    }
    @ModelAttribute("categories")
    public List<Category> getCategories(){
        return categoryRepository.findAll();
    }
    @ModelAttribute("institutions")
    public List<Institution> getInstitutions(){
        return institutionRepository.findAll();
    }

    @GetMapping("/form")
    public String showDonationForm(Model model){
        model.addAttribute("donation", new Donation());
        return "form";
    }
    @PostMapping("/form")
    public String donate(@ModelAttribute Donation donation){
        donationRepository.save(donation);
        return "redirect:/";
    }



}
