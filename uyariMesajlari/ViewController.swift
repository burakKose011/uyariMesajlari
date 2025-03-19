//
//  ViewController.swift
//  uyariMesajlari
//
//  Created by macbook on 2.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var againText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUp(_ sender: Any) {
        
        if emailText.text == ""  {   // kullanıcı email kısmını boş bırakırsa hata mesajı ver, emaili girmemişsse,hata mesajı ile emailini girmemişsin
          
            let uyariMesaji = UIAlertController(title: "hata mesajı", message: "email yanlış verildi", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { (UIAlertAction) in   //(UIAlertAction) -> Void)? e basıp entere tıklayınca UIAlertAction in gelir
                // OK Button'una tıklanınca olacaklar
                print("ok buton tiklandi")
            }  // UIAlertAction butona tıklandığında ne olacağını belirtir
            
            uyariMesaji.addAction(okButton)  // uyarı mesajına bu butonu ekledik
            
            self.present(uyariMesaji, animated: true, completion: nil) //kullanıcıya gösterir // true yani animasyonlu göster demek ,completion mesaj gelditen sonra ne yapacağını söyler
            
        }
        
        else if passwordText.text == "" {    // kullanıcı şifre kısmını girmemişse, hata mesajı ile parolanı girmemişsin
           
            
            let uyariMesaji = UIAlertController(title: "hata mesajı", message: "parola yanlış verildi", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
                print("ok buton tiklandi")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
            
            
            
            
        }
        else if passwordText.text != againText.text {  // şifreler birbirine uymuyor ise,hata mesajı ile parolalar uyuşmuyor yazdır
            
            let uyariMesaji = UIAlertController(title: "hata mesajı", message: "parolalar uyuşmuyor", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
                print("ok buton tiklandi")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
            
            
            
        }
        else{ // başarılı kayıt
            
            let uyariMesaji = UIAlertController(title: "hata mesajı", message: "tebrikler kullanıcı oluşturuldu!", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
                print("ok buton tiklandi")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
        }
        
        
        
    /*
        let uyariMesaji = UIAlertController(title: "hata mesajı", message: "email yanlış verildi", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { (UIAlertAction) in   //(UIAlertAction) -> Void)? e basıp entere tıklayınca UIAlertAction in gelir
            // OK Button'una tıklanınca olacaklar
            print("ok buton tiklandi")
        }  // UIAlertAction butona tıklandığında ne olacağını belirtir
        
        uyariMesaji.addAction(okButton)  // uyarı mesajına bu butonu ekledik
        
        self.present(uyariMesaji, animated: true, completion: nil) //kullanıcıya gösterir // true yani animasyonlu göster demek ,completion mesaj gelditen sonra ne yapacağını söyler
        
    */
        
    }
    


}

// bu kısım önemli ve güzel burayı tekrar et
// uyarı mesajı için hepsine aynı şeyi yaptık sadece message kısmını değiştirdik bu kadar kalabalık yapacağımıza fonksyon kullanarak fonksyonu çağırınca yapsak daha güzel olur
