// Generates the settings file for the EconomyPlus datapack.
//package economyPlus;
import java.util.Scanner;
import java.io.*;


public class Generator {

    public static void replaceAllInFiles(File[] files, String to) {
        
        for (File file : files) {
            if (file.isDirectory()) {
                //System.out.println("Directory: " + file.getName());
                replaceAllInFiles(file.listFiles(), to); // Calls same method again.
            } else {
                //System.out.println("File: " + file.getName());
                try {
                    
                   BufferedReader r = new BufferedReader( new FileReader(file));


                   //FileOutputStream w = new FileOutputStream("test.txt");

                   String tempFile = "temp.txt";
                   PrintWriter w = new PrintWriter(new FileWriter(tempFile));


                   /*int c;
                   while((c = r.read()) != -1) {
                       System.out.print((char) c);
                   }
                   r.close();*/

                    String line;
                    while((line = r.readLine()) != null) {

                        line = line.replace("¢","$").replace("₠","$").replace("¤","$").replace("€","$").replace("£","$").replace("¥","$").replace("Ƀ","$");
                        line = line.replace("$", to);
                        w.write(line+"\n");
                    }

                    w.close();
                    r.close();
                   
                    // Delete old file and rename new file to old
                    //File oldFile = new File(filePath);
                    File newFile = new File(tempFile);

                    file.delete();
                    newFile.renameTo(file);
                   
                   
                } catch (IOException e) {
                    System.out.println("There was an error reading/writing a file!  The end result may not be as expected.");
                }
            }
        }
    }

    public static void main(String[] args) {

        String[][] settingsMap = {

            {"SetWorldSpawn","#ep.config.SetWorldSpawn ep.config"},
            {"SpawnProtectionX","#ep.config.SpawnProtectionX ep.config"},
            {"SpawnProtectionY","#ep.config.SpawnProtectionY ep.config"},
            {"SpawnProtectionZ","#ep.config.SpawnProtectionZ ep.config"},

            {"LowestPaidCreditScore","#ep.config.LowestPaidCreditScore ep.config"},
            {"CreditMinPercentPay","#ep.config.CreditMinPercentPay ep.config"},

            {"AllowBounty","#ep.bounty.enabled ep.variable"},
            {"AllowBountyTravel","#ep.bounty.travel ep.variable"},
            {"AllowBountyPayoff","#ep.bounty.payoff ep.variable"},
            {"AllowBountyBlacklist","#ep.bounty.blacklist ep.variable"},
            {"BountyKillReceive","#ep.bounty_percent ep.variable"},
            {"BountyDecreaseAmount","#ep.bounty_decrease ep.variable"},
            {"BountyDecreaseTime","#ep.bounty.interval ep.variable"},
            {"BountyPayoffInterest","#ep.bounty.return.percent ep.variable"},

            {"AllowBank"},
            {"AllowBankInterest","#ep.interest.enabled ep.config"},
            {"VaultBalanceBeforeInterest","#ep.vault_pay_interest ep.variable"},
            {"BankBalanceBeforeInterest","#ep.enum.bank.interest_min ep.variable"},
            {"BankInterestRate","#ep.enum.bank.interest_rate ep.variable"},
            {"BankInterestInterval","#ep.bank.interest.interval ep.variable"},

            {"AllowVault","#ep.realistic_enabled ep.config"},
            {"PreventSelling","#ep.prevent_seller_if_empty ep.variable"},
            {"VaultMinValue","#ep.vault_minimum ep.variable"},
            
            {"AllowLoan","#ep.loan.enabled ep.config"},
            {"PlayerMaxLoan","#ep.loan.max_loan ep.variable"},
            {"PlayerEquityBeforeLoan","#ep.loan.equity ep.config"},
            {"MaxLoanOfAmountInVault","#ep.max_loan_percent ep.variable"},
            {"LoanInterest","#ep.loan.interest_rate ep.variable"},
            
            {"AllowDebt","#ep.loan.enabled ep.config"},
            {"DebtInterval","#ep.debt.interval ep.variable"},
            
            {"DebtRateBlack","#ep.debt.rate.black ep.variable"},
            {"DebtRateRed","#ep.debt.rate.red ep.variable"},
            {"DebtRateOrange","#ep.debt.rate.orange ep.variable"},
            {"DebtRateYellow","#ep.debt.rate.yellow ep.variable"},
            {"DebtRateGreen","#ep.debt.rate.green ep.variable"},
            
            {"StartCreditScore","#ep.default.credit_score ep.config"},
            {"MinCreditScoreBlack","#ep.credit_score.black ep.variable"},
            {"MinCreditScoreRed","#ep.credit_score.red ep.variable"},
            {"MinCreditScoreOrange","#ep.credit_score.orange ep.variable"},
            {"MinCreditScoreYellow","#ep.credit_score.yellow ep.variable"},
            {"MinCreditScoreGreen","#ep.credit_score.green ep.variable"},
            
            {"CreditScoreGain","#ep.credit_score.pay ep.variable"},
            {"CreditScoreLoss","#ep.credit_score.miss ep.variable"},
            
            {"AllowTax","#ep.tax.enabled ep.config"},
            {"MoneyBeforeTax","#ep.tax.min_amount ep.variable"},
            {"TaxRate","#ep.tax.rate ep.variable"},
            {"TaxInterval","#ep.tax.interval ep.variable"},

            {"AllowPlaytimeReward","#ep.reward.enabled ep.config"},
            {"PlaytimeRewardAmount","#ep.reward_value ep.variable"},
            {"PlaytimeRewardInterval","#ep.reward.interval ep.variable"},

            {"AllowPlayerShop","#ep.player_shop.enabled ep.config"},
            {"PlayerShopCost","#ep.market.sign_cost ep.variable"},
            {"PlayerShopCostFee","#ep.market.fee ep.variable"},

            {"TravelTime","#ep.terminal.pre_teleport_cooldown ep.variable"},

            {"AllowHomeTravel","#ep.terminal.teleport_enabled2 ep.variable"},
            {"HomeTravelCost","#ep.terminal.teleport_cost2 ep.variable"},
            {"HomeTravelCooldown","#ep.terminal.teleport_cooldown2 ep.variable"},

            {"AllowSpawnTravel","#ep.terminal.teleport_enabled1 ep.variable"},
            {"SpawnTravelCost","#ep.terminal.teleport_cost1 ep.variable"},
            {"SpawnTravelCooldown","#ep.terminal.teleport_cooldown1 ep.variable"},

            {"AllowAuctionTravel","#ep.terminal.teleport_enabled3 ep.variable"},
            {"AuctionTravelCost","#ep.terminal.teleport_cost3 ep.variable"},
            {"AuctionTravelCooldown","#ep.terminal.teleport_cooldown3 ep.variable"},

            {"AllowBankTravel","#ep.terminal.teleport_enabled4 ep.variable"},
            {"BankTravelCost","#ep.terminal.teleport_cost4 ep.variable"},
            {"BankTravelCooldown","#ep.terminal.teleport_cooldown4 ep.variable"},

            {"AllowShopTravel","#ep.terminal.teleport_enabled ep.variable"},
            {"ShopTravelCost","#ep.terminal.teleport_cost ep.variable"},
            {"ShopTravelCooldown","#ep.terminal.teleport_cooldown ep.variable"},

            {"AllowMarketTravel","#ep.terminal.teleport_enabled5 ep.variable"},
            {"MarketTravelCost","#ep.terminal.teleport_cost5 ep.variable"},
            {"MarketTravelCooldown","#ep.terminal.teleport_cooldown5 ep.variable"},

            {"AllowAuction","#ep.auction.enabled ep.variable"},
            {"AuctionSoldFee","#ep.auction.fee ep.variable"},
            {"AuctionBidTimer","#ep.auction.auction_time ep.variable"},
            
            {"AllowMoneyDropMobs","#ep.money_drop.mobs ep.config"},
            {"AllowMoneyDropOre","#ep.money_drop.ore ep.config"},
            {"AllowMoneyDropFarming","#ep.money_drop.farming ep.config"},
            {"AllowMoneyDropFishing","#ep.money_drop.fishing ep.config"},
            {"AllowMoneyDropWood","#ep.money_drop.wood ep.config"},

            {"AllowSideBar","#ep.sidebar_statistic ep.config"},
            {"AllowList","#ep.list_statistic ep.config"},
            {"AllowActionBar","#ep.actionbar_statistic ep.config"},
            {"AllowBelowName","#ep.below_name_statistic ep.config"},

            {"AllowDeathDrop","#ep.death.enabled ep.config"},
            {"DeathDropRecoverable","#ep.dead.drop ep.variable"},
            {"DeathDropUnrecoverable","#ep.dead.void ep.variable"},

            {"MoneyName"},
            {"MoneyIcon"}
        };
        
        
        System.out.println("RUNs");
        try {
            File configFile = new File("config.properties");    
            
            Scanner sc = new Scanner(configFile);

            try {
                Writer writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(".\\data\\directory\\functions\\setup_settings.mcfunction"), "utf-8"));

                while (sc.hasNextLine()) { // loops through the whole file to read its contents
                    String line = sc.nextLine();
                    
                    if(line == null) continue;
                    if(line.isEmpty()) continue;
                    if(line.charAt(0) == '#') continue;

                    String[] sLine = line.split(":");
                    
                    if(sLine[0].equals("MoneyName")) {
                        writer.write("scoreboard objectives modify ep.display_money displayname {\"text\":\"" + sLine[1].replaceAll("\\s", "") + "\", \"color\":\"#D4AF37\"}\n");
                        continue;
                    } else if(sLine[0].equals("MoneyIcon")) {
                        File[] files = new File("data").listFiles();
                        replaceAllInFiles(files, sLine[1].replaceAll("\\s", ""));
                        continue;
                    }

                    for(int i=0; i < settingsMap.length; i++) {
                        //System.out.println(sLine[0]);
                        if(settingsMap[i][0].equals(sLine[0])) { // if the setting is a supported one
                            
                            int value = 1;
                            
                            if(sLine[1].contains("true")) { // if the value is true
                                sLine[1] = "1";
                            } else if(sLine[1].contains("false")) { // if the value is false
                                sLine[1] = "0";
                            }
                            sLine[1] = sLine[1].replaceAll("\\s", "").replaceAll("\\$","").replaceAll("%","").replaceAll("t","");
                            if(sLine[1].contains("s")) { // multiplies by 20 to convert from seconds to ticks
                                sLine[1] = sLine[1].replaceAll("s","");
                                value = 20;
                            } else if(sLine[1].contains("m")) { // x20x60 = minutes
                                sLine[1] = sLine[1].replaceAll("m","");
                                value = 20*60;
                            } else if(sLine[1].contains("h")) { // x20x60x60 = hours
                                sLine[1] = sLine[1].replaceAll("h","");
                                value = 20*60*60;
                            } else if(sLine[1].contains("d")) { // x20x60x60x24 = days
                                sLine[1] = sLine[1].replaceAll("d","");
                                value = 20*60*60*24;
                            }

                            try {
                                value = value * Integer.parseInt(sLine[1]);
                            } catch(NumberFormatException e) {
                                
                                System.out.println(sLine[1] + "Error at setting:" + sLine[0] + ".  Perhaps there is another character on the value?");
                                //System.out.println(e);
                            }
                            //System.out.println(value);
                                                       
                            writer.write("scoreboard players set " + settingsMap[i][1] + " " + Integer.toString(value) + "\n");
                            

                            break;
                        }
                    }

                }
                writer.close(); 
            }

            catch (IOException e) {
                System.out.println("There was an issue writing to the config file.");
            }

            sc.close();
        } catch(FileNotFoundException e) {
            System.out.println("config.properties file not found.  Please create a new one, or re-download the datapack.");
        }

        Scanner sc = new Scanner(System.in);
        System.out.println("Press enter to exit.");
        sc.nextLine();
        sc.close();
    }
}