import UIKit

class ViewController: UIViewController {
    let onOff = UISwitch()
    let aimMode = UISegmentedControl(items: ["Pescoço", "Cabeça"])

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

        let title = UILabel(frame: .init(x: 20, y: 100, width: 300, height: 50))
        title.text = "HYZZ FFZ"
        title.textColor = .red
        title.font = .boldSystemFont(ofSize: 36)
        view.addSubview(title)

        let sub = UILabel(frame: .init(x: 20, y: 150, width: 300, height: 20))
        sub.text = "Aimbot External"
        sub.textColor = .lightGray
        view.addSubview(sub)

        let lbl = UILabel(frame: .init(x: 20, y: 220, width: 200, height: 20))
        lbl.text = "Ativar Aimbot"
        lbl.textColor = .white
        view.addSubview(lbl)

        onOff.frame = .init(x: 240, y: 215, width: 60, height: 30)
        onOff.onTintColor = .red
        onOff.addTarget(self, action: #selector(toggle), for: .valueChanged)
        view.addSubview(onOff)

        aimMode.frame = .init(x: 20, y: 280, width: 280, height: 32)
        aimMode.selectedSegmentIndex = 0
        aimMode.addTarget(self, action: #selector(modeChanged), for: .valueChanged)
        view.addSubview(aimMode)

        let hint = UILabel(frame: .init(x: 20, y: 350, width: 280, height: 120))
        hint.text = "Como usar:\n1. Ative o Aimbot aqui\n2. Puxe a Central de Controle\n3. Segure o botão de Gravação de Tela\n4. Selecione 'hyzz ffz'\n5. Abra o Free Fire"
        hint.numberOfLines = 0
        hint.textColor = .gray
        hint.font = .systemFont(ofSize: 14)
        view.addSubview(hint)
    }

    @objc func toggle() { AimbotEngine.shared.enabled = onOff.isOn }
    @objc func modeChanged() { AimbotEngine.shared.targetMode = aimMode.selectedSegmentIndex }
}
