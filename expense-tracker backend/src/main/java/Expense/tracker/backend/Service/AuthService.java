package Expense.tracker.backend.Service;


import Expense.tracker.backend.Repository.AuthRepository;
import Expense.tracker.backend.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    @Autowired
    AuthRepository authRepository;
    public void add(User user){




    }

}
