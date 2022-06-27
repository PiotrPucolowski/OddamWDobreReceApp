package pl.coderslab.charity.controller;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
@RequestMapping("/donation")
public class DonationController {
    private final DonationRepository donationRepository;
    private final CategoryRepository categoryRepository;
    private final InstitutionRepository institutionRepository;

    @GetMapping("/form")
    public String addDonation(Model model){
        model.addAttribute("donation", new Donation());
        return "formConfirmation";
    }
    @ModelAttribute("categories")
    public List<Category> getCategories(){
        return categoryRepository.findAll();
    }
    @ModelAttribute("institutions")
    public List<Institution> getInstitutions(){
        return institutionRepository.findAll();
    }

    @GetMapping("/donationForm")
    public String showDonationForm(Model model){
        model.addAttribute("donation", new Donation());
        return "donationForm";
    }
    @PostMapping("/donationForm")
    public String donate(@ModelAttribute Donation donation){
        donationRepository.save(donation);
        return "redirect:/";
    }



}
