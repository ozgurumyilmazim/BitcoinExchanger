# BitcoinExchanger
Crypto Currency Exchange Market

SPECIFICATIONS
1.	The software is a web portal running on Linux servers. 
2.	The software is a php software. 
3.	The software will load a page in 2 seconds, on 2500 request/second load.
4.	PHP Coding Best Practices will be tracked.
5.	It will be browsed without needing a special plugin/addon (Except admin pages)
6.	Popular browser’s (Opera, Internet Explorer, Chrome, Mozilla) latest stable versions will be used to browse the software. (Except admin pages)
7.	The admin pages may require a special application and/or restricted browser.
8.	Android and IOS users should use the site without native application (they will be using their default browsers).
9.	The software is a BTC to altcoin exchange market. 
10.	Users will trade (both buy and sell) crypto currency pairs. 
11.	All user interaction will be in Turkish and English. 
12.	All registered users will have a wallet for major cryptocurrencies (BTC, LTC, ETH, XRP).
13.	All registered users will have a wallet for funds (Turkish Lira)
14.	The supported alt coins are:
a.	ETH 
b.	LTC
c.	BCH 
d.	ETC
e.	XRP
15.	The software will have REST API set.
16.	The trading can be done with API .
17. Users can fund account with Bank transfer, Cash deposit, debit/credit card.  
18. A matching engine that looks at the current buy and sell orders and matches orders together and executes the trades. 
19. Fully zoomable charts that cover complete market history

Scenarios:
1.	Registration
i.	Users should be registered by an email. 
ii.	Users will login after validating their email  
2.	Login
i.	Users will login with Google Authenticator. Users that has not active the Google Authenticator, can not withdraw fund or coin.
3.	Registered User Deposit coin
i.	Registered Users can deposit BTC and alt coins. 
4.	Registered User Withdraw coin
i.	Registered Users can withdraw their BTC and alt coins (2FA is needed)
5.	Registered User Trading
i.	Users can place a buy or sell order for a pair. 
6.	Registered User Market Data
i.	Registered Users are allowed to access market data for a pair.
ii.	User can set an alert using the market data.
iii.	User can place a sell/buy order using market data 
7.	Registered user investigate User Activity
8.	Registered user investigate Wallet Activity
9.	Unregistered User Market Buy/Sell
i.	Unregistered are able to buy and sell pairs with market prices.
ii.	They will select a pair to buy or sell
iii.	They will transfer the amount to an address generated by the system
iv.	The system will check the amount, and do the conversion and transfer the result amount to the users’ address.
10.	Admin User Crypto Currency (Coin) Commission Define
i.	Admin user can define commissions for the following. 
1.	Deposit for all cryptocurrencies
2.	Withdraw for all cryptocurrencies
3.	Trading to BTC to an alt coin (for all altcoins)
4.	Trading to an alt coin to BTC (for all altcoins)
5.	Trading for unregistered users
ii.	Admin user can define how many confirmation is needed for a crypto currency (for all crypto currencies) to be valid for a user.
11.	Admin User Monitor the alt coin
12.	Admin User Monitor the user requests
13.	Admin user monitor the exchange market
14.	Admin user investigate user activity
15.	Admin user investigate user wallet activity
