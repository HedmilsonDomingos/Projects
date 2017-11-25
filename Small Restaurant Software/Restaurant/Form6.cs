using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace Restaurant
{
   
    public partial class Form6 : Form
    {
        SqlConnection conection = new SqlConnection();
        public Form6()
        {
            InitializeComponent();
           
            
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            
           login_adm lg = new login_adm();
            this.Hide();
            lg.Show();
        }

        private void comboBox6_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox6.Text == "Afghanistan")
            {
                comboBox5.Text = "+93";
            }
            else if (comboBox6.Text == "Angola")
            {
                comboBox5.Text = "+244";
            }
            if (comboBox6.Text == "India")
            {
                comboBox5.Text = "+91";
            }
            if (comboBox6.Text == "Albania")
            {
                comboBox5.Text = "+355";
            }
            if (comboBox6.Text == "American Samoa")
            {
                comboBox5.Text = "+1 - 684";
            }
            if (comboBox6.Text == "Andorra")
            {
                comboBox5.Text = "+376";
            }
            if (comboBox6.Text == "Angola")
            {
                comboBox5.Text = "+244";
            }
            if (comboBox6.Text == "Anguilla")
            {
                comboBox5.Text = "+1 - 264";
            }
            if (comboBox6.Text == "Antarctica")
            {
                comboBox5.Text = "+672";
            }
            if (comboBox6.Text == "Antigua and Barbuda")
            {
                comboBox5.Text = "+1 - 268";
            }
            if (comboBox6.Text == "Argentina")
            {
                comboBox5.Text = "+54";
            }
            if (comboBox6.Text == "Armenia")
            {
                comboBox5.Text = "+374";
            }
            if (comboBox6.Text == "Aruba")
            {
                comboBox5.Text = "+297";
            }
            if (comboBox6.Text == "Australia")
            {
                comboBox5.Text = "+61";
            }
            if (comboBox6.Text == "Austria")
            {
                comboBox5.Text = "+43";
            }
            if (comboBox6.Text == "Azerbaijan")

            {
                comboBox5.Text = "+994";
            }
            if (comboBox6.Text == "Bahamas")
            {
                comboBox5.Text = "+1 - 242";
            }
            if (comboBox6.Text == "Bahrain")
            {
                comboBox5.Text = "+973";
            }
            if (comboBox6.Text == "Bangladesh")
            {
                comboBox5.Text = "+880";
            }
            if (comboBox6.Text == "Barbados")
            {
                comboBox5.Text = "+1 - 246";
            }
            if (comboBox6.Text == "Belarus")
            {
                comboBox5.Text = "+375";
            }
            if (comboBox6.Text == "Belgium")
            {
                comboBox5.Text = "+32";
            }
            if (comboBox6.Text == "Belize")
            {
                comboBox5.Text = "+501";
            }
            if (comboBox6.Text == "Benin")
            {
                comboBox5.Text = "+229";
            }
            if (comboBox6.Text == "Bermuda")
            {
                comboBox5.Text = "+1-441";
            }
            if (comboBox6.Text == "Bhutan")
            {
                comboBox5.Text = "+975";
            }
            if (comboBox6.Text == "Bolivia")
            {
                comboBox5.Text = "+591";
            }
            if (comboBox6.Text == "Bosnia and Herzegovina")
            {
                comboBox5.Text = "+387";
            }
            if (comboBox6.Text == "Botswana")
            {
                comboBox5.Text = "+267";
            }
            if (comboBox6.Text == "Brazil")
            {
                comboBox5.Text = "+55";
            }
            if (comboBox6.Text == "British Virgin Islands")
            {
                comboBox5.Text = "+1-284";
            }
            if (comboBox6.Text == "British Indian Ocean Territory")
            {
                comboBox5.Text = "+246";
            }
            if (comboBox6.Text == "Brunei")
            {
                comboBox5.Text = "+673";
            }
            if (comboBox6.Text == "Bulgaria")
            {
                comboBox5.Text = "+226";
            }
            if (comboBox6.Text == "Burkina Faso")
            {
                comboBox5.Text = "+226";
            }
            if (comboBox6.Text == "Burundi")
            {
                comboBox5.Text = "+257";
            }
            if (comboBox6.Text == "Cambodia")
            {
                comboBox5.Text = "+855";
            }
            if (comboBox6.Text == "Cameroon")
            {
                comboBox5.Text = "+237";
            }
            if (comboBox6.Text == "Canada")
            {
                comboBox5.Text = "+1";
            }
            if (comboBox6.Text == "Cape Verde")
            {
                comboBox5.Text = "+238";
            }
            if (comboBox6.Text == "Cayman Islands")
            {
                comboBox5.Text = "+1-345";
            }
            if (comboBox6.Text == "Central African Republic")
            {
                comboBox5.Text = "+236";
            }
            if (comboBox6.Text == "Chad")
            {
                comboBox5.Text = "+235";
            }
            if (comboBox6.Text == "Chile")
            {
                comboBox5.Text = "+56";
            }
            if (comboBox6.Text == "China")
            {
                comboBox5.Text = "+88";
            }
            if (comboBox6.Text == "Christams Island")
            {
                comboBox5.Text = "+61";
            }
            if (comboBox6.Text == "Cocos Island")
            {
                comboBox5.Text = "+61";
            }
            if (comboBox6.Text == "Colombia")
            {
                comboBox5.Text = "+57";
            }
            if (comboBox6.Text == "Comoros")
            {
                comboBox5.Text = "+269";
            }
            if (comboBox6.Text == "Cook Island")
            {
                comboBox5.Text = "+682";
            }
            if (comboBox6.Text == "Costa Rica")
            {
                comboBox5.Text = "+506";
            }
            if (comboBox6.Text == "Croatia")
            {
                comboBox5.Text = "+385";
            }
            if (comboBox6.Text == "Cuba")
            {
                comboBox5.Text = "+53";
            }
            if (comboBox6.Text == "Curacao")
            {
                comboBox5.Text = "+599";
            }
            if (comboBox6.Text == "Cyprus")
            {
                comboBox5.Text = "+357";
            }
            if (comboBox6.Text == "Czech Republic")
            {
                comboBox5.Text = "+420";
            }
            if (comboBox6.Text == "Democratic Republic of the Cango")
            {
                comboBox5.Text = "+243";
            }
            if (comboBox6.Text == "Denmark")
            {
                comboBox5.Text = "+45";
            }
            if (comboBox6.Text == "Djibouti")
            {
                comboBox5.Text = "+253";
            }
            if (comboBox6.Text == "Dominica")
            {
                comboBox5.Text = "+1-767";
            }
            if (comboBox6.Text == "Dominican Republic")
            {
                comboBox5.Text = "+1-809";
            }
            if (comboBox6.Text == "Dominican Republic1")
            {
                comboBox5.Text = "+1-829";
            }
            if (comboBox6.Text == "Dominican Republic2")
            {
                comboBox5.Text = "+1-849";
            }
            if (comboBox6.Text == "East Timor")
            {
                comboBox5.Text = "+670";
            }
            if (comboBox6.Text == "Ecuador")
            {
                comboBox5.Text = "593";
            }
            if (comboBox6.Text == "Egypt")
            {
                comboBox5.Text = "+20";
            }
            if (comboBox6.Text == "El Salvador")
            {
                comboBox5.Text = "+503";
            }
            if (comboBox6.Text == "Equatorial Guinea")
            {
                comboBox5.Text = "+240";
            }
            if (comboBox6.Text == "Eritrea")
            {
                comboBox5.Text = "291";
            }
            if (comboBox6.Text == "Estonia")
            {
                comboBox5.Text = "+372";
            }
            if (comboBox6.Text == "Ethiopia")
            {
                comboBox5.Text = "+251";
            }
            if (comboBox6.Text == "Falkland Island")
            {
                comboBox5.Text = "+500";
            }
            if (comboBox6.Text == "Faroe Island")
            {
                comboBox5.Text = "+298";
            }
            if (comboBox6.Text == "Fiji")
            {
                comboBox5.Text = "+679";
            }
            if (comboBox6.Text == "Finland")
            {
                comboBox5.Text = "+358";
            }
            if (comboBox6.Text == "Frnace")
            {
                comboBox5.Text = "+33";
            }
            if (comboBox6.Text == "French Polynesia")
            {
                comboBox5.Text = "+689";
            }
            if (comboBox6.Text == "Gabon")
            {
                comboBox5.Text = "+241";
            }
            if (comboBox6.Text == "Gambia")
            {
                comboBox5.Text = "+220";
            }
            if (comboBox6.Text == "Geogria")
            {
                comboBox5.Text = "+995";
            }
            if (comboBox6.Text == "Germany")
            {
                comboBox5.Text = "+49";
            }
            if (comboBox6.Text == "Ghana")
            {
                comboBox5.Text = "+233";
            }
            if (comboBox6.Text == "Gilbraltar")
            {
                comboBox5.Text = "+350";
            }
            if (comboBox6.Text == "Greece")
            {
                comboBox5.Text = "+30";
            }
            if (comboBox6.Text == "Greenland")
            {
                comboBox5.Text = "+299";
            }
            if (comboBox6.Text == "Grenada")
            {
                comboBox5.Text = "+1-472";
            }
            if (comboBox6.Text == "Guam")
            {
                comboBox5.Text = "+1-671";
            }
            if (comboBox6.Text == "Guatemala")
            {
                comboBox5.Text = "502";
            }
            if (comboBox6.Text == "Guernsey")
            {
                comboBox5.Text = "+44-1481";
            }
            if (comboBox6.Text == "guinea")
            {
                comboBox5.Text = "+224";
            }
            if (comboBox6.Text == "Guinea-Bissau")
            {
                comboBox5.Text = "+245";
            }
            if (comboBox6.Text == "Guyana")
            {
                comboBox5.Text = "+592";
            }
            if (comboBox6.Text == "Honduras")
            {
                comboBox5.Text = "+504";
            }
            if (comboBox6.Text == "Haiti")
            {
                comboBox5.Text = "+509";
            }
            if (comboBox6.Text == "Hong Kong")
            {
                comboBox5.Text = "+852";
            }
            if (comboBox6.Text == "Hungary")
            {
                comboBox5.Text = "+36";
            }
            if (comboBox6.Text == "Iceland")
            {
                comboBox5.Text = "+354";
            }
            if (comboBox6.Text == "Indonesia")
            {
                comboBox5.Text = "+62";
            }
            if (comboBox6.Text == "Iran")
            {
                comboBox5.Text = "+98";
            }
            if (comboBox6.Text == "Iraq")
            {
                comboBox5.Text = "+964";
            }
            if (comboBox6.Text == "Ireland")
            {
                comboBox5.Text = "+353";
            }
            if (comboBox6.Text == "Isle of Man")
            {
                comboBox5.Text = "+44-1624";
            }
            if (comboBox6.Text == "Isreal")
            {
                comboBox5.Text = "+972";
            }
            if (comboBox6.Text == "Italy")
            {
                comboBox5.Text = "+39";
            }
            if (comboBox6.Text == "Ivory Coast")
            {
                comboBox5.Text = "+225";
            }
            if (comboBox6.Text == "Jamica")
            {
                comboBox5.Text = "+1-876";
            }
            if (comboBox6.Text == "Japan")
            {
                comboBox5.Text = "+81";
            }
            if (comboBox6.Text == "Jersy")
            {
                comboBox5.Text = "+44-1534";
            }
            if (comboBox6.Text == "Jordan")
            {
                comboBox5.Text = "+962";
            }
            if (comboBox6.Text == "Kazakhstan")
            {
                comboBox5.Text = "+7";
            }
            if (comboBox6.Text == "Kenya")
            {
                comboBox5.Text = "+254";
            }
            if (comboBox6.Text == "Kiribati")
            {
                comboBox5.Text = "696";
            }
            if (comboBox6.Text == "Kosovo")
            {
                comboBox5.Text = "+383";
            }
            if (comboBox6.Text == "Kuwait")
            {
                comboBox5.Text = "+965";
            }
            if (comboBox6.Text == "Kyrgyzstan")
            {
                comboBox5.Text = "+996";
            }
            if (comboBox6.Text == "Laos")
            {
                comboBox5.Text = "856";
            }
            if (comboBox6.Text == "latvia")
            {
                comboBox5.Text = "371";
            }
            if (comboBox6.Text == "Lebanon")
            {
                comboBox5.Text = "+961";
            }
            if (comboBox6.Text == "Lesotho")
            {
                comboBox5.Text = "+266";
            }
            if (comboBox6.Text == "Liberia")
            {
                comboBox5.Text = "+231";
            }
            if (comboBox6.Text == "Liechtenstein")
            {
                comboBox5.Text = "+423";
            }
            if (comboBox6.Text == "Lithuania")
            {
                comboBox5.Text = "+370";
            }
            if (comboBox6.Text == "Luxembourg")
            {
                comboBox5.Text = "+352";
            }
            if (comboBox6.Text == "Macao")
            {
                comboBox5.Text = "+853";
            }
            if (comboBox6.Text == "Mecedonia")
            {
                comboBox5.Text = "+389";
            }
            if (comboBox6.Text == "Madagascar")
            {
                comboBox5.Text = "+261";
            }
            if (comboBox6.Text == "Malawi")
            {
                comboBox5.Text = "+265";
            }
            if (comboBox6.Text == "Malaysia")
            {
                comboBox5.Text = "+68";
            }
            if (comboBox6.Text == "Maldives")
            {
                comboBox5.Text = "+960";
            }
            if (comboBox6.Text == "Mali")
            {
                comboBox5.Text = "+223";
            }
            if (comboBox6.Text == "Marshall Islands")
            {
                comboBox5.Text = "+692";
            }
            if (comboBox6.Text == "Mauritania")
            {
                comboBox5.Text = "+222";
            }
            if (comboBox6.Text == "Mauritius")
            {
                comboBox5.Text = "+230";
            }
            if (comboBox6.Text == "Mayotte")
            {
                comboBox5.Text = "+262";
            }
            if (comboBox6.Text == "Mexico")
            {
                comboBox5.Text = "+52";
            }
            if (comboBox6.Text == "Micronesia")
            {
                comboBox5.Text = "+691";
            }
            if (comboBox6.Text == "Moldove")
            {
                comboBox5.Text = "+373";
            }
            if (comboBox6.Text == "Monaco")
            {
                comboBox5.Text = "+377";
            }
            if (comboBox6.Text == "Montenegro")
            {
                comboBox5.Text = "+382";
            }
            if (comboBox6.Text == "Italy")
            {
                comboBox5.Text = "+39";
            }
            if (comboBox6.Text == "Mozambique")
            {
                comboBox5.Text = "+258";
            }
            if (comboBox6.Text == "Myanmar")
            {
                comboBox5.Text = "+95";
            }
            if (comboBox6.Text == "Mamibia")
            {
                comboBox5.Text = "+264";
            }
            if (comboBox6.Text == "Nauru")
            {
                comboBox5.Text = "+674";
            }
            if (comboBox6.Text == "Nepal")
            {
                comboBox5.Text = "+977";
            }
            if (comboBox6.Text == "Netherlands")
            {
                comboBox5.Text = "+31";
            }
            if (comboBox6.Text == "Netherlands Antilles")
            {
                comboBox5.Text = "+599";
            }
            if (comboBox6.Text == "New Caledonia")
            {
                comboBox5.Text = "+687";
            }
            if (comboBox6.Text == "New Zealand")
            {
                comboBox5.Text = "+64";
            }
            if (comboBox6.Text == "Nicaragua")
            {
                comboBox5.Text = "+505";
            }
            if (comboBox6.Text == "Niger")
            {
                comboBox5.Text = "+227";
            }
            if (comboBox6.Text == "Nigeria")
            {
                comboBox5.Text = "+234";
            }
            if (comboBox6.Text == "Niue")
            {
                comboBox5.Text = "+683";
            }
            if (comboBox6.Text == "North Korea")
            {
                comboBox5.Text = "+850";
            }
            if (comboBox6.Text == "Northern Marian Islands")
            {
                comboBox5.Text = "+1-670";
            }
            if (comboBox6.Text == "Oman")
            {
                comboBox5.Text = "+968";
            }
            if (comboBox6.Text == "Norway")
            {
                comboBox5.Text = "+47";
            }
            if (comboBox6.Text == "Pakistan")
            {
                comboBox5.Text = "+92";
            }
            if (comboBox6.Text == "Palau")
            {
                comboBox5.Text = "+680";
            }
            if (comboBox6.Text == "Palestine")
            {
                comboBox5.Text = "+970";
            }
            if (comboBox6.Text == "Panama")
            {
                comboBox5.Text = "+507";
            }
            if (comboBox6.Text == "Papua New Guinea")
            {
                comboBox5.Text = "675";
            }
            if (comboBox6.Text == "Paraguay")
            {
                comboBox5.Text = "+595";
            }
            if (comboBox6.Text == "Peru")
            {
                comboBox5.Text = "+51";
            }
            if (comboBox6.Text == "Philippines")
            {
                comboBox5.Text = "+63";
            }
            if (comboBox6.Text == "Pitcairn")
            {
                comboBox5.Text = "+63";
            }
            if (comboBox6.Text == "Poland")
            {
                comboBox5.Text = "+48";
            }
            if (comboBox6.Text == "Portugal")
            {
                comboBox5.Text = "+351";
            }
            if (comboBox6.Text == "Puerto Rice")
            {
                comboBox5.Text = "+1-787";
            }
            if (comboBox6.Text == "Qatar")
            {
                comboBox5.Text = "+974";
            }
            if (comboBox6.Text == "Republic of the Congo")
            {
                comboBox5.Text = "+242";
            }
            if (comboBox6.Text == "Reunion")
            {
                comboBox5.Text = "+262";
            }
            if (comboBox6.Text == "Romania")
            {
                comboBox5.Text = "+40";
            }
            if (comboBox6.Text == "Russia")
            {
                comboBox5.Text = "+7";
            }
            if (comboBox6.Text == "Rawanda")
            {
                comboBox5.Text = "+250";
            }
            if (comboBox6.Text == "Saint Barthelemy")
            {
                comboBox5.Text = "+590";
            }
            if (comboBox6.Text == "Saint Helena")
            {
                comboBox5.Text = "+290";
            }
            if (comboBox6.Text == "Saint Kitts and Nevis")
            {
                comboBox5.Text = "+1-869";
            }
            if (comboBox6.Text == "Saint Lucia")
            {
                comboBox5.Text = "+1-758";
            }
            if (comboBox6.Text == "Saint Martin")
            {
                comboBox5.Text = "+590";
            }
            if (comboBox6.Text == "Saint Pierre and Miquelon")
            {
                comboBox5.Text = "+508";
            }
            if (comboBox6.Text == "Saint Vincent and the Grenadines")
            {
                comboBox5.Text = "+1-784";
            }
            if (comboBox6.Text == "Samoa")
            {
                comboBox5.Text = "+685";
            }
            if (comboBox6.Text == "San Marino")
            {
                comboBox5.Text = "+378";
            }
            if (comboBox6.Text == "Sao Tome and Principe")
            {
                comboBox5.Text = "+239";
            }
            if (comboBox6.Text == "Saudi Arabia")
            {
                comboBox5.Text = "+966";
            }
            if (comboBox6.Text == "Senegal")
            {
                comboBox5.Text = "+221";
            }
            if (comboBox6.Text == "Serbia")
            {
                comboBox5.Text = "+381";
            }
            if (comboBox6.Text == "Seychelles")
            {
                comboBox5.Text = "+248";
            }
            if (comboBox6.Text == "Sierra Leon")
            {
                comboBox5.Text = "+232";
            }
            if (comboBox6.Text == "Sinagapore")
            {
                comboBox5.Text = "+65";
            }
            if (comboBox6.Text == "Sint Maarten")
            {
                comboBox5.Text = "+1-721";
            }
            if (comboBox6.Text == "Slovakia")
            {
                comboBox5.Text = "+421";
            }
            if (comboBox6.Text == "Slovenia")
            {
                comboBox5.Text = "+386";
            }
            if (comboBox6.Text == "Solomon Islands")
            {
                comboBox5.Text = "+677";
            }
            if (comboBox6.Text == "Somalia")
            {
                comboBox5.Text = "+252";
            }
            if (comboBox6.Text == "South Africa")
            {
                comboBox5.Text = "+27";
            }
            if (comboBox6.Text == "South Korea")
            {
                comboBox5.Text = "+82";
            }
            if (comboBox6.Text == "South Sudan")
            {
                comboBox5.Text = "+211";
            }
            if (comboBox6.Text == "Spain")
            {
                comboBox5.Text = "+34";
            }
            if (comboBox6.Text == "Sri Lanka")
            {
                comboBox5.Text = "+94";
            }
            if (comboBox6.Text == "Sudan")
            {
                comboBox5.Text = "+249";
            }
            if (comboBox6.Text == "Suriname")
            {
                comboBox5.Text = "+597";
            }
            if (comboBox6.Text == "Svanlbard and Jan Mayen")
            {
                comboBox5.Text = "+47";
            }
            if (comboBox6.Text == "Swaziland")
            {
                comboBox5.Text = "+268";
            }
            if (comboBox6.Text == "Sweden")
            {
                comboBox5.Text = "+46";
            }
            if (comboBox6.Text == "Switzerland")
            {
                comboBox5.Text = "+41";
            }
            if (comboBox6.Text == "Syria")
            {
                comboBox5.Text = "+963";
            }
            if (comboBox6.Text == "Taiwan")
            {
                comboBox5.Text = "+886";
            }
            if (comboBox6.Text == "MTajikistan")
            {
                comboBox5.Text = "+992";
            }
            if (comboBox6.Text == "Tanzania")
            {
                comboBox5.Text = "+255";
            }
            if (comboBox6.Text == "Thailand")
            {
                comboBox5.Text = "+66";
            }
            if (comboBox6.Text == "Tago")
            {
                comboBox5.Text = "+228";
            }
            if (comboBox6.Text == "Tokelau")
            {
                comboBox5.Text = "+690";
            }
            if (comboBox6.Text == "Tonga")
            {
                comboBox5.Text = "+676";
            }
            if (comboBox6.Text == "Trinnidad and Tobago")
            {
                comboBox5.Text = "+1-868";
            }
            if (comboBox6.Text == "Tunisia")
            {
                comboBox5.Text = "+216";
            }
            if (comboBox6.Text == "Turkey")
            {
                comboBox5.Text = "+90";
            }
            if (comboBox6.Text == "Turkmenistan")
            {
                comboBox5.Text = "+993";
            }
            if (comboBox6.Text == "Turks and Caicos Islands")
            {
                comboBox5.Text = "+1-649";
            }
            if (comboBox6.Text == "Tuvalu")
            {
                comboBox5.Text = "+688";
            }
            if (comboBox6.Text == "U.S. Virgin Islands")
            {
                comboBox5.Text = "+1-240";
            }
            if (comboBox6.Text == "Uganda")
            {
                comboBox5.Text = "+256";
            }
            if (comboBox6.Text == "Ukraine")
            {
                comboBox5.Text = "+264";
            }
            if (comboBox6.Text == "United Arab Emirates")
            {
                comboBox5.Text = "+971";
            }
            if (comboBox6.Text == "United Kingdom")
            {
                comboBox5.Text = "+44";
            }
            if (comboBox6.Text == "United States")
            {
                comboBox5.Text = "+1";
            }
            if (comboBox6.Text == "Uruguay")
            {
                comboBox5.Text = "+598";
            }
            if (comboBox6.Text == "Uzbekistan")
            {
                comboBox5.Text = "+998";
            }
            if (comboBox6.Text == "Vanuatu")
            {
                comboBox5.Text = "+678";
            }
            if (comboBox6.Text == "Vatican")
            {
                comboBox5.Text = "+379";
            }
            if (comboBox6.Text == "Vietnam")
            {
                comboBox5.Text = "+84";
            }
            if (comboBox6.Text == "Wallis and Funtuna")
            {
                comboBox5.Text = "+681";
            }
            if (comboBox6.Text == "Western Sahara")
            {
                comboBox5.Text = "+212";
            }
            if (comboBox6.Text == "Yemen")
            {
                comboBox5.Text = "+967";
            }
            if (comboBox6.Text == "Zambia")
            {
                comboBox5.Text = "+260";
            }
            if (comboBox6.Text == "Zimbabwe")
            {
                comboBox5.Text = "+263";
            }


        
    
}

        private void comboBox4_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void comboBox4_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (char.IsNumber(e.KeyChar) || e.KeyChar == '.')
            {

            }
            else
            {
                e.Handled = e.KeyChar != (char)Keys.Back;
            }
        }

        private void toolTip1_Popup(object sender, PopupEventArgs e)
        {
           

        }

        private void pictureBox2_MouseUp(object sender, MouseEventArgs e)
        {
           
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            
            SqlConnection conection = new SqlConnection(@"Data Source=LENOVO-PC\SOHAIB;Initial Catalog=Login;Integrated Security=True");
            conection.Open();
            if (textBox1.Text != "" && textBox2.Text != "" && ((checkBox1.Checked == true && checkBox3.Checked == false && checkBox4.Checked==false) || (checkBox3.Checked == true && checkBox1.Checked == false && checkBox4.Checked==false) || (checkBox4.Checked == true && checkBox1.Checked == false && checkBox3.Checked==false)) && ((radioButton4.Checked==true) ||( radioButton5.Checked==true) ||(radioButton6.Checked==true)))
            {
                if (checkBox1.Checked == true)
                {
                    SqlCommand cnd = new SqlCommand("insert into Table_log (Name,LastName,Shift,Male,Femal,Other,Date,Month,Year,Country,Code,Number) values('" + textBox1.Text + "','" + textBox2.Text + "','AM' ,'"+radioButton4.Checked+ "','" + radioButton5.Checked + "','" + radioButton6.Checked + "', '" + comboBox2.Text + "' ,'" + comboBox3.Text + "', '" + comboBox1.Text + "', '" + comboBox6.Text + "' ,'" + comboBox5.Text + "', '" + textBox3.Text + "')", conection);
                    cnd.ExecuteNonQuery();
                }
                else if(checkBox3.Checked==true)
                {
                    SqlCommand cnd = new SqlCommand("insert into Table_log (Name,LastName,Shift,Male,Femal,Other,Date,Month,Year,Country,Code,Number) values('" + textBox1.Text + "','" + textBox2.Text + "','PM' , '" + radioButton4.Checked + "','" + radioButton5.Checked + "','" + radioButton6.Checked + "','" + comboBox2.Text + "' ,'" + comboBox3.Text + "', '" + comboBox1.Text + "', '" + comboBox6.Text + "' ,'" + comboBox5.Text + "', '" + textBox3.Text + "')", conection);
                    cnd.ExecuteNonQuery();
                }
                else if (checkBox4.Checked == true)
                {
                    SqlCommand cnd = new SqlCommand("insert into Table_log (Name,LastName,Shift,Male,Femal,Other,Date,Month,Year,Country,Code,Number) values('" + textBox1.Text + "','" + textBox2.Text + "','FTime' , '" + radioButton4.Checked + "','" + radioButton5.Checked + "','" + radioButton6.Checked + "','" + comboBox2.Text + "' ,'" + comboBox3.Text + "', '" + comboBox1.Text + "', '" + comboBox6.Text + "' ,'" + comboBox5.Text + "', '" + textBox3.Text + "')", conection);
                    cnd.ExecuteNonQuery();
                }


            }
          
            conection.Close();
          
            
            if (checkBox1.Checked == true && checkBox3.Checked == true)
            {
                MessageBox.Show("You should mark only one");
            }
            else if (checkBox1.Checked == true && checkBox4.Checked == true)
            {
                MessageBox.Show("You should mark only one");
            }
            else if (checkBox3.Checked == true && checkBox4.Checked == true)
            {
                MessageBox.Show("You should mark only one");
            }
            else if (checkBox1.Checked == true && checkBox3.Checked == true && checkBox4.Checked == true)
            {
                MessageBox.Show("You should mark only one");
            }
         

            else if (textBox1.Text == "" || textBox2.Text == "" ||  (checkBox1.Checked == false && checkBox3.Checked == false && checkBox4.Checked == false))
            {
                MessageBox.Show("None of the boxes should be empty");
            }
            else if (radioButton4.Checked == false && radioButton5.Checked == false && radioButton6.Checked == false)
            {
                MessageBox.Show("None of the boxes should be empty");
            }
            else if (comboBox1.Text == "" ||comboBox2.Text == "" || comboBox3.Text == "" || textBox3.Text == "" || comboBox5.Text == "" || comboBox6.Text == "")
            {
                MessageBox.Show("None of the boxes should be empty");
            }
           

            else
            {
                MessageBox.Show("Data Saved");
                label13.Text = textBox1.Text.Insert(0, "Thank you dear  ");//.Insert(Text,"Your Username And Pasword will send To you soon by Message");
                label13.Text = label13.Text + "! Your Information Saved.";
                label17.Text ="You will have your username and password soon.";
                checkBox1.Checked = false;
                checkBox3.Checked = false;
                checkBox4.Checked = false;
                comboBox1.Text = "";
                comboBox2.Text = "";
                comboBox3.Text = "";
                textBox3.Text = "";
                comboBox5.Text = "";
                comboBox6.Text = "";
                radioButton4.Checked = false;
                radioButton5.Checked = false;
                radioButton6.Checked = false;
                textBox1.Text = "";
                textBox2.Text = "";
                dateTimePicker1.Text = "";
            }
        }

        private void textBox3_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (char.IsNumber(e.KeyChar) || e.KeyChar == '.')
            {

            }
            else
            {
                e.Handled = e.KeyChar != (char)Keys.Back;
            }
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void Form6_Load(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection(@"Data Source=LENOVO-PC\SOHAIB;Initial Catalog=Login;Integrated Security=True");
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LENOVO-PC\SOHAIB;Initial Catalog=Login;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from Table_log", con);
            con.Open();
            SqlDataReader DR1 = cmd.ExecuteReader();
            while(DR1.Read())
            {
                MessageBox.Show(DR1.GetValue(0).ToString());
                MessageBox.Show(DR1.GetValue(1).ToString());
            }

           /* SqlConnection conection = new SqlConnection(@"Data Source=LENOVO-PC\SOHAIB;Initial Catalog=Login;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from Table_log",conection);
            conection.Open();
            SqlDataReader DR1 = cmd.ExecuteReader();
             
            while(DR1.Read())
            {
                MessageBox.Show(DR1.GetValue(0).ToString());
                MessageBox.Show( DR1.GetValue(1).ToString());
            }
            */
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
