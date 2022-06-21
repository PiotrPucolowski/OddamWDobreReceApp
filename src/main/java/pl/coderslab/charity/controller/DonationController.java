package pl.coderslab.charity.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.repository.DonationRepository;
/*
Rolą kontrolera będzie wyświetlenie oraz obsługa formularza dodawania darów.

 */
@Controller
@RequiredArgsConstructor
@RequestMapping("donation")
public class DonationController {
    private final DonationRepository donationRepository;

}
