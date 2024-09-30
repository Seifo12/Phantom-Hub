#!/bin/bash

# إنشاء ملف script.sh في المجلد الرئيسي
echo '#!/bin/bash

# Welcome message
echo "======================================="
echo "         Welcome to Airdrop Script      "
echo "======================================="
echo -e "\033[1;34m┌──────────────────────────────┐\033[0m"  # Top border
echo -e "\033[1;34m│        Shortcut created by    │\033[0m"  # Line with name
echo -e "\033[1;34m│         Saif Mohamed          │\033[0m"  # Line with name
echo -e "\033[1;34m└──────────────────────────────┘\033[0m"  # Bottom border
echo ""

# Main menu function
main_menu() {
    echo "Choose an option:"
    echo "---------------------------------------"
    echo "1) Moonbix"
    echo "2) MemeFi Auto Quest and More"
    echo "3) Notpixel"
    echo "4) Memefi 1 Click Kill Boss"
    echo "5) Yes Coin (GOLD)"
    echo "6) Exit"
    echo "---------------------------------------"
    echo ""
    read -p "Enter your choice: " choice

    case \$choice in
        1)
            moonbix_menu
            ;;
        2)
            memfi_menu
            ;;
        3)
            notpixel_menu
            ;;
        4)
            memefi_1clickkillboss_menu
            ;;
        5)
            yescoin_menu
            ;;
        6)
            echo "Exiting the script..."
            exit 0
            ;;
        *)
            echo "Invalid choice! Please try again."
            main_menu
            ;;
    esac
}

# Function to edit files in proot-distro
edit_file() {
    file_path=\$1
    proot-distro login ubuntu -- /bin/bash -c "nano \$file_path"
}

# Yes Coin menu function
yescoin_menu() {
    echo "Choose an option for Yes Coin (GOLD):"
    echo "---------------------------------------"
    echo "1) Start"
    echo "2) Edit query"
    echo "3) Return to Main Menu"
    echo "---------------------------------------"
    echo ""
    read -p "Enter your choice: " yescoin_choice

    case \$yescoin_choice in
        1)
            echo "======================================="
            echo "        Running Start option..."
            echo "======================================="
            cd "taptap/files/YesCoin (GOLD)"
            python yescoin.py
            ;;
        2)
            echo "======================================="
            echo "        Running Edit query option..."
            echo "======================================="
            cd "taptap/files/YesCoin (GOLD)"
            nano query.txt
            ;;
        3)
            main_menu
            ;;
        *)
            echo "Invalid choice! Please try again."
            yescoin_menu
            ;;
    esac
}

# Memefi 1 Click Kill Boss menu function
memefi_1clickkillboss_menu() {
    echo "Choose an option for Memefi 1 Click Kill Boss:"
    echo "---------------------------------------"
    echo "1) Start"
    echo "2) Edit query"
    echo "3) Return to Main Menu"
    echo "---------------------------------------"
    echo ""
    read -p "Enter your choice: " memefi_choice

    case \$memefi_choice in
        1)
            echo "======================================="
            echo "        Running Start option..."
            echo "======================================="
            cd "taptap/files/Memefi"
            python memefi.py
            ;;
        2)
            echo "======================================="
            echo "        Running Edit query option..."
            echo "======================================="
            cd "taptap/files/Memefi"
            nano query_id.txt
            ;;
        3)
            main_menu
            ;;
        *)
            echo "Invalid choice! Please try again."
            memefi_1clickkillboss_menu
            ;;
    esac
}

# Moonbix menu function
moonbix_menu() {
    echo "Choose an option for Moonbix:"
    echo "---------------------------------------"
    echo "1) Start"
    echo "2) Edit"
    echo "3) Install"
    echo "4) Return to Main Menu"
    echo "---------------------------------------"
    echo ""
    read -p "Enter your choice: " moonbix_choice

    case \$moonbix_choice in
        1)
            echo "======================================="
            echo "        Running Start option..."
            echo "======================================="
            cd moonbix
            python -m venv myenv
            source myenv/bin/activate
            python main.py
            ;;
        2)
            echo "======================================="
            echo "        Running Edit option..."
            echo "======================================="
            cd moonbix
            edit_file "data.txt"
            ;;
        3)
            echo "======================================="
            echo "        Running Install option..."
            echo "======================================="
            pkg update && pkg upgrade -y
            pkg install python -y
            pkg install nano -y
            pkg install git -y
            git clone https://github.com/winsnip/moonbix.git
            cd moonbix
            python -m venv myenv
            source myenv/bin/activate
            pip install -r requirements.txt
            echo "Moonbix installation completed!"
            moonbix_menu
            ;;
        4)
            main_menu
            ;;
        *)
            echo "Invalid choice! Please try again."
            moonbix_menu
            ;;
    esac
}

# MemeFi menu function
memfi_menu() {
    echo "Choose an option for MemeFi:"
    echo "---------------------------------------"
    echo "1) Start"
    echo "2) Edit"
    echo "3) Install"
    echo "4) Return to Main Menu"
    echo "---------------------------------------"
    echo ""
    read -p "Enter your choice: " memfi_choice

    case \$memfi_choice in
        1)
            echo "======================================="
            echo "        Running Start option..."
            echo "======================================="
            proot-distro login ubuntu -- /bin/bash -c "cd MemeFiBot-New && node index.js"
            ;;
        2)
            echo "======================================="
            echo "        Running Edit option..."
            echo "======================================="
            edit_file "MemeFiBot-New/queryIds.json"
            ;;
        3)
            echo "======================================="
            echo "        Running Install option..."
            echo "======================================="
            pkg update && pkg upgrade -y
            pkg install proot-distro -y
            proot-distro install ubuntu
            proot-distro login ubuntu -- /bin/bash -c "apt update && apt upgrade -y && apt install curl -y && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs && git clone https://github.com/FreddyWhest/MemeFiBot-New.git && cd MemeFiBot-New && npm install && cp .env-example .env"
            echo "MemeFi installation completed!"
            memfi_menu
            ;;
        4)
            main_menu
            ;;
        *)
            echo "Invalid choice! Please try again."
            memfi_menu
            ;;
    esac
}

# Notpixel menu function
notpixel_menu() {
    echo "Choose an option for Notpixel:"
    echo "---------------------------------------"
    echo "1) Start"
    echo "2) Edit"
    echo "3) Return to Main Menu"
    echo "---------------------------------------"
    echo ""
    read -p "Enter your choice: " notpixel_choice

    case \$notpixel_choice in
        1)
            echo "======================================="
            echo "        Running Start option..."
            echo "======================================="
            cd NotPixel
            python -m venv pix
            source pix/bin/activate
            python main.py
            ;;
        2)
            echo "======================================="
            echo "        Running Edit option..."
            echo "======================================="
            cd NotPixel
            edit_file "data.txt"
            ;;
        3)
            main_menu
            ;;
        *)
            echo "Invalid choice! Please try again."
            notpixel_menu
            ;;
    esac
}

# Start the script
main_menu
' > ~/script.sh

# جعل الملف قابل للتنفيذ
chmod +x ~/script.sh

# فتح ملف .bashrc وإضافة alias
echo "alias script='~/script.sh'" >> ~/.bashrc

# إعادة تحميل ملف .bashrc
source ~/.bashrc

echo "تم إنشاء السكربت بنجاح!"
