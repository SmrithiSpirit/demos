$(function(){
  var keyword = [
    { value: 'About Us'},
	{ value: 'Mission Vision Values'},
	{ value: 'Board Of Directors'},
	{ value: 'Evolution Of SBI'},
	{ value: 'Awards'},
	{ value: 'Computer Security'},
	{ value: 'Vision'},
	{ value: 'Security'},
	{ value: 'Affiliates'},
	{ value: 'Banking Subsidiaries'},
	{ value: 'Foreign Subsidiaries'},
	{ value: 'Non Banking Subsidiaries'},
	{ value: 'Joint Ventures'},
	{ value: 'Subsidiaries'},
	{ value: 'Corporate Governance'},
	{ value: 'Governance'},
	{ value: 'QIP'},
	{ value: 'SBI QIP Placement Document'},
	{ value: 'SBI Investor Update'},
	{ value: 'Policies'},
	{ value: 'Annual Report'},
	{ value: 'Annual Report 2014 to 2015'},
	{ value: 'Annual Report 2013 to 2014'},
	{ value: 'Annual Report 2012 to 2013'},
	{ value: 'Annual Report 2011 to 2012'},
	{ value: 'Annual Report 2010 to 2011'},
	{ value: 'Annual Report 2009 to 2010'},
	{ value: 'Annual Report 2008 to 2009'},
	{ value: 'Annual Report 2007 to 2008'},
	{ value: 'Pillar'},
	{ value: 'Pillar III Disclosures'},
	{ value: 'Basel III Disclosures'},
	{ value: 'Basel II Disclosures'},
	{ value: 'Disclosures'},
	{ value: 'Regulatory Disclosures'},
	{ value: 'Indicators'},
	{ value: 'G SIB indicators'},
	{ value: 'Code of fair Disclosure under SEBI Prohibition of Insider Trading Regulations, 2015'},
	{ value: 'Code Of Conduct For The Bankâ€™s Board Of Directors And Core Management Approved By The Central Board'},
	{ value: 'Share Holder Info'},
	{ value: 'Share Holding Pattern'},
	{ value: 'Lodgement'},
	{ value: 'Lodgement Of Shares For Transfer'},
	{ value: 'Proxy Form And Attendance Slip'},
	{ value: 'Notice To Shareholders Annual Report in Electronic Form'},
	{ value: 'AGM 2015 â€“ Notice'},
	{ value: 'Bond Holder Info'},
	{ value: 'Financial Results'},
	{ value: 'Right To Information Act 2005'},
	{ value: 'Organizational Structure'},
	{ value: 'SBI Organizational Structure May 2015'},
	{ value: 'List Of Appellate Authority'},
	{ value: 'IBI Employees Pension Guarantee Fund'},
	{ value: 'IBIEPGF Rules And Regulations'},
	{ value: 'Pension Trust Deed'},
	{ value: 'IBI Pension Trust Deed'},
	{ value: 'Statement Of Affairs As On 31.03.2014'},
	{ value: 'Functions And Duties'},
	{ value: 'Application Fees Appeal MISC'},
	{ value: 'Directory And Gross Emoluments of State Bank of India Staff'},
	{ value: 'Particulars Of Vigilance Department'},
	{ value: 'State Bank Of India Act Regulation 1955'},
	{ value: 'State Bank Of India Subsidiary Banks Act, 1959'},
	{ value: 'Social Responsibility'},
	{ value: 'Corporate Social Responsibility'},
	{ value: 'Responsibility'},
	{ value: 'State Bank Day 2014'},
	{ value: 'BR Policy'},
	{ value: 'BR Report 2012 to 2013'},
	{ value: 'BR Report 2013 to 2014'},
	{ value: 'World Water Day'},
	{ value: 'Audit Info'},
	{ value: 'Disclosure Document for Portfolio Management Services'},
	{ value: 'Amalgamation Of Bank Of Behar Ltd'},
	{ value: 'Investor Relation'},
	{ value: 'Bank Ratings'},
	{ value: 'Quarterly and Annual Results'},
	{ value: 'Composition of the Central Board'},
	{ value: 'Presentation'},
	{ value: 'Analyst Presentation'},
	{ value: 'Webcast'},
	{ value: 'FAQs'},
	{ value: 'Contact Us'},
	{ value: 'List Of Specialised Branches'},
	{ value: 'Corporate Centre'},
	{ value: 'Account Tracking Center Borrower Help Line'},
	{ value: 'Help Line'},
	{ value: 'Customer Care'},
	{ value: 'Compensation Policy'},
	{ value: 'Contact Centre'},
	{ value: 'Cheque Collection Policy'},
	{ value: 'Arrangements For Collection Of Domestic Cheques'},
	{ value: 'Procedure For Collection Of International Cheques,Instruments'},
	{ value: 'Reason For Return'},
	{ value: 'Types Of Settlement Processes In Other Countries'},
	{ value: 'Dealing With Incidents Of Frequent Dishonour Of Cheques And Failed ECS Debit'},
	{ value: 'Complaints Feedback Appreciation'},
	{ value: 'Citizens Charter'},
	{ value: 'Commitments'},
	{ value: 'Key Commitments'},
	{ value: 'General Terms And Conditions Of Service'},
	{ value: 'Savings Bank Account'},
	{ value: 'Current Account'},
	{ value: 'Term Deposits Account'},
	{ value: 'Special Term Deposit Account'},
	{ value: 'Nomination Facility'},
	{ value: 'Remittance Facilities'},
	{ value: 'LIC Disclosure'},
	{ value: 'Payment Of Pensions'},
	{ value: 'Payment Of{ value: Balance In Accounts'},
	{ value: 'Other Special Schemes And Facilities'},
	{ value: 'Grievance Redressal Mechanism'},
	{ value: 'Addresses And Helpline NOS'},
	{ value: 'FAQ Housing Loan'},
	{ value: 'FAQ Centralised Pension Processing'},
	{ value: 'FAQ RTGS NEFT'},
	{ value: 'FAQ Code Of Banks Commitment To Micro And Small Enterprise'},
	{ value: 'FAQ Salary Package'},
	{ value: 'FAQ ATMS Compiled By RBI'},
	{ value: 'FAQ Car Loan'},
	{ value: 'FAQ Educational Loan'},
	{ value: 'FAQ Personal Loan'},
	{ value: 'FAQ Loan Against Shares Debentures'},
	{ value: 'FAQ Festival Loans'},
	{ value: 'FAQ State Bank Foreign Travel Card'},
	{ value: 'FAQ SBI Cashplus Scheme'},
	{ value: 'FAQ ATM Services'},
	{ value: 'FAQ Deceased Accounts'},
	{ value: 'FAQ For NRI'},
	{ value: 'FAQ International Banking Merchant Banking'},
	{ value: 'FAQ Lease Finance'},
	{ value: 'FAQ Project Finance'},
	{ value: 'FAQ Project Uptech'},
	{ value: 'FAQ Working Capital Finance'},
	{ value: 'FAQ Equipment Leasing'},
	{ value: 'FAQ Internet Banking'},
	{ value: 'FAQ E Pay'},
	{ value: 'FAQ SCSS'},
	{ value: 'FAQ IMD Redemption'},
	{ value: 'FAQ Sbi Gold International Debit'},
	{ value: 'FAQ Public Provident Fund'},
	{ value: 'FAQ Pradhan Mantri Jan Dhan Yojana PMJDY'},
	{ value: 'Disclaimer'},
	{ value: 'Policy On Security Repossesion'},
	{ value: 'Policy On Depositors Rights'},
	{ value: 'Fair Lending Practices Code'},
	{ value: 'List Of Unclaimed, Inoperative Accounts'},
	{ value: 'Process For Claiming Activating the Unclaimed Accounts'},
	{ value: 'Unclaimed Deposits Accounts: Claim Form'},
	{ value: 'Names of Recovery Agents'},
	{ value: 'State Banks Tech Learning Centers TLCs'},
	{ value: 'Personal Banking'},
	{ value: 'Deposit Schemes'},
	{ value: 'Savings Bank Account'},
	{ value: 'Savings Account'},
	{ value: 'Premium Savings Account'},
	{ value: 'Savings Bank RulesAbridged'},
	{ value: 'Savings Plus Account'},
	{ value: 'Yuva Savings Bank Account'},
	{ value: 'Basic Savings Bank Account'},
	{ value: 'Small Account'},
	{ value: 'Savings Bank Accounts for Minors'},
	{ value: 'Current Account'},
	{ value: 'Know Your Customer KYC Guidelines'},
	{ value: 'KYC Documents Individuals'},
	{ value: 'KYC Documents Non Individuals'},
	{ value: 'Term Deposits'},
	{ value: 'SBI Tax Savings Scheme, 2006'},
	{ value: 'Reinvestment Plan'},
	{ value: 'SBI MODS'},
	{ value: 'Recurring Deposit'},
	{ value: 'Annuity Deposit Scheme'},
	{ value: 'SBI Flexi Deposit Scheme'},
	{ value: 'Domestic Term Deposits Interest Rates'},
	{ value: 'SBI Capgains Plus'},
	{ value: 'Personal Finance'},
	{ value: 'Home Loans'},
	{ value: 'Products'},
	{ value: 'Home Loan Products'},
	{ value: 'Related Home Loan Products'},
	{ value: 'Features'},
	{ value: 'Fees'},
	{ value: 'Interest Rates'},
	{ value: 'Repayment'},
	{ value: 'Documents'},
	{ value: 'Most Important Terms Conditions'},
	{ value: 'Home Loans Application Form'},
	{ value: 'Projects'},
	{ value: 'List Of Approved Projects'},
	{ value: 'SBI Group Personal Accident'},
	{ value: 'Takeover Of Home Loans'},
	{ value: 'Her Ghar'},
	{ value: 'Home Loan For Women'},
	{ value: 'Her Ghar Home Loan For Women'},
	{ value: 'Loan For Earnest Money Deposit'},
	{ value: 'Tribal Plus Scheme'},
	{ value: 'SBI New Car Loan Scheme'},
	{ value: 'SBI Combo Loan Scheme'},
	{ value: 'Certified Pre Owned Car Loan'},
	{ value: 'Car Loan Scheme For Used Car'},
	{ value: '2 Wheeler Loan'},
	{ value: 'SBI Loyalty Car Loan Scheme'},
	{ value: 'SBI Nano Youth Car Loan Scheme'},
	{ value: 'Super Bike Loan Scheme'},
	{ value: 'Most Important Terms Conditions'},
	{ value: 'Apply Online'},
	{ value: 'Education Loans'},
	{ value: 'Personal Loans'},
	{ value: 'Xpress Credit Personal Loan'},
	{ value: 'SBI Saral Personal Loan'},
	{ value: 'Loans To Pensioners'},
	{ value: 'Festival Loans'},
	{ value: 'Most Imporatant Terms And Conditions'},
	{ value: 'Loans Against Securities'},
	{ value: 'Loan Against Debentures'},
	{ value: 'Loans To Employees To Purchase ESOPS'},
	{ value: 'Loan for subscription to IPOs'},
	{ value: 'Loans against units of SBI Debt Fund Series'},
	{ value: 'Loan Against Shares'},
	{ value: 'SBI Overdraft against Fixed Deposits'},
	{ value: 'Most Important Terms Conditions'},
	{ value: 'Gold Loans'},
	{ value: 'Loans Against Property'},
	{ value: 'Loan Against Mortgage Of Immovable Property'},
	{ value: 'Rent Plus'},
	{ value: 'Most Important Terms Conditions'},
	{ value: 'Career Loan'},
	{ value: 'SBI Career Loan'},
	{ value: 'Education Plus'},
	{ value: 'Timelines For Conveying Credit Decisions'},
	{ value: 'Credit Khazana'},
	{ value: 'Services'},
	{ value: 'Mobile Banking'},
	{ value: 'About Mobile Banking'},
	{ value: 'Book Train Tickets Over IRCTC Portal Using IMPS'},
	{ value: 'Book Airline, Railway, Bus, Movie Tickets and Shop From Your Mobile'},
	{ value: 'Immediate Payment Service IMPS'},
	{ value: 'Grievance Redressal For MBS And IMPS'},
	{ value: 'IM Dealer Charges'},
	{ value: 'sbiINTOUCHLite'},
	{ value: 'Demat Services'},
	{ value: 'Experience Power Demat'},
	{ value: 'Customer Care'},
	{ value: 'Access Account Online'},
	{ value: 'Online Trading'},
	{ value: 'Service Charges'},
	{ value: 'Announcements'},
	{ value: 'Forms'},
	{ value: 'Download Forms'},
	{ value: 'Digitally Signed Statement'},
	{ value: 'Faqs'},
	{ value: 'New Account Opening: Demat And Online Trading'},
	{ value: 'State Bank Buddy'},
	{ value: 'Cards'},
	{ value: 'Debit Card'},
	{ value: 'State Bank Classic Debit Card'},
	{ value: 'State Bank Silver International Debit Card'},
	{ value: 'State Bank Global International Debit Card'},
	{ value: 'State Bank Gold International Debit Card'},
	{ value: 'State Bank Platinum International Debit Card'},
	{ value: 'Debit Card Loyalty Program'},
	{ value: 'sbiINTOUCH Tap and Go Debit Card'},
	{ value: 'Verified By Visa, Mastercard Securecode Registration'},
	{ value: 'State Bank Mumbai Metro Combo Card'},
	{ value: 'Debit Card Offers'},
	{ value: 'Business Debit Card'},
	{ value: 'State Bank Pride'},
	{ value: 'State Bank Premium'},
	{ value: 'Prepaid Card'},
	{ value: 'State Bank Gift Card'},
	{ value: 'State Bank Ez Pay Card'},
	{ value: 'State Bank Smart Payout Card'},
	{ value: 'State Bank Xpress Money Card'},
	{ value: 'State Bank Foreign Travel Card'},
	{ value: 'Verified By Visa Registration'},
	{ value: 'Virtual Card'},
	{ value: 'State Bank Virtual Card'},
	{ value: 'ATM Services'},
	{ value: 'Internet Banking'},
	{ value: 'Foreign Inward Remittance'},
	{ value: 'List Of Branches'},
	{ value: 'Features'},
	{ value: 'Safe Deposit Locker'},
	{ value: 'New Pension System NPS'},
	{ value: 'ASBA'},
	{ value: 'Western Union Money Transfer'},
	{ value: 'Mobile Wallet'},
	{ value: 'Green Remit Card'},
	{ value: 'Inflation Indexed National Savings Securities CumulativeIINSS'},
	{ value: 'Special Salary Account'},
	{ value: 'Gold Banking'},
	{ value: 'Retail Sale Of Gold Coins'},
	{ value: 'Gold Deposit Scheme GDS'},
	{ value: 'Agriculture, Rural' },
	{ value: 'Agricultural Banking' },
	{ value: 'Stree Shakti Tractor Loan SSTL' },
	{ value: 'Agricultural Gold Loans' },
	{ value: 'Kisan Credit Card KCC' },
	{ value: 'Produce Marketing Loan' },
	{ value: 'Kisan Gold Card Scheme KGC' },
	{ value: 'Setting Up Of Agri Clinic Agri Business Centres ' },
	{ value: 'Land Purchase Scheme' },
	{ value: 'Scoring Model For Tractor Loans' },
	{ value: 'Financing Of Second Hand, Used Tractors Scheme' },
	{ value: 'Financing Power Tillers' },
	{ value: 'Financing For Combine Harvesters' },
	{ value: 'Scheme For Financing Farm Machinery Where Tangible Assets are Created' },
	{ value: 'Dairy Plus Scheme For Financing Dairy Units' },
	{ value: 'Dairy Society Plus Scheme Scheme for Financing Dairy Societies' },
	{ value: 'Broiler Plus' },
	{ value: 'Scheme To Cover Loans For General Purpose Under General Credit Card GCC' },
	{ value: 'Sbi Krishak Uthaan Yojna' },
	{ value: 'Gramin Bhandaran Yojna Capital Investment Subsidy Scheme for Construction, Renovation of Rural Godowns' },
	{ value: 'Scheme For Financing Private Cold Storage, Private Ware Houses for Onlending to Farmers' },
	{ value: 'Scheme For Financing Seed Processors' },
	{ value: 'Mortgage Loan To Seed Processing Units' },
	{ value: 'Capital Investment Subsidy Scheme for Commercial Production Units of Organic inputs Under National Project on Organic Farming' },
	{ value: 'Scheme For Debt Swapping Of Borrowers' },
	{ value: 'Arthiyas Plus Scheme' },
	{ value: 'Minor Irrigation Schemes' },
	{ value: 'Finance To Horticulture' },
	{ value: 'Financing JLG Of Tenant Farmers' },
	{ value: 'Scheme For Financing Micro Finance Institutions  MFIs, Non Government Organisation NGOs' },
	{ value: 'Sanjeevani' },
	{ value: 'Krishi Kalyan' },
	{ value: 'Financing For Organic Farming' },
	{ value: 'Financing JLG Of Tenent Farmers' },
	{ value: 'Lead Bank Scheme' },
	{ value: 'Lending To Minority Communities Quarterly Progress Reports' },
	{ value: 'Business Correspondent BC Arrangement' },
	{ value: 'New Tractor Loan Scheme' },
	{ value: 'Rural Self Employment Training Institutes RSETIs' },
	{ value: 'Micro Credit' },
	{ value: 'Timelines For Conveying Credit Decisions' },
	{ value: 'Sale of Tractor Loan Portfolio' },
	{ value: 'Regional Rural Banks' },
	{ value: 'PMJDY Gallery' },
	{ value: 'Financial Inclusion' },
	{ value: 'Rural' },
	{ value: 'Bank Mitra deployed in SSAs' },
	{ value: 'Direct Benefit Transfer DBT' },
	{ value: 'New Products and Campaigns' },
	{ value: 'Aadhaar Seeding' },
	{ value: 'Retail Banking' },
	{ value: 'Wholesale Banking' },
	{ value: 'Correspondent Banking' },
	{ value: 'Global Trade Services' },
	{ value: 'Treasury Management' },
	{ value: 'Compliance and Risk' },
	{ value: ' Merchant Banking' },
	{ value: 'Commercial Loans' },
	{ value: 'Project Export Finance' },
	{ value: 'Group Companies' },
	{ value: 'Cross sell' },
	{ value: 'Corporate Banking' },
	{ value: 'Profile' },
	{ value: 'Corporate Accounts Group CAG' },
	{ value: 'Core Credit Products' },
	{ value: 'Other Structured Products' },
	{ value: 'Trade Finances' },
	{ value: 'Other Products' },
	{ value: 'Mid Corporate Group' },
	{ value: 'Mid Corporate Group Branches' },
	{ value: 'Project Finance' },
	{ value: 'Products And Services' },
	{ value: 'Industrial Sector' },
	{ value: 'Trade And Services Sector' },
	{ value: 'Specialized Products' },
	{ value: 'Cash Management Product' },
	{ value: 'Cash Deposit Machine' },
	{ value: 'RTGS NEFT' },
	{ value: 'Service Charges and Fees' },
	{ value: 'Service Charges  Advances Related Services CI, SME and AGL Segments' },
	{ value: 'Service Charges General Other than Advances' },
	{ value: 'Basic Service Charges Other than General and Advances' },
	{ value: 'SBI Quick Missed Call Banking' },
	{ value: 'E Rail' },
	{ value: 'E Pay' },
	{ value: 'Safe Deposit Locker' },
	{ value: 'Broking Services' },
	{ value: 'Magnetic Ink Character Recognition MICR' },
	{ value: 'Foreign Inward Remittance' },
	{ value: 'Business Continuity Planning BCP' },
	{ value: 'Direct Taxes' },
	{ value: 'Indirect Taxes' },
	{ value: 'State Government Taxes' },
	{ value: 'Pension' },
	{ value: 'Senior Citizens Savings Scheme' },
	{ value: 'Passport Seva Kendra' },
	{ value: 'Online Payment User Guide' },
	{ value: 'Pension Payment for Autonomous Institutions' },
	{ value: 'Public Provident Fund PPF' },
	{ value: 'PPF' },
	{ value: 'Sukanya Samriddhi Yojana' },
	{ value: 'Deposit Rates' },
	{ value: 'Domestic Term Deposits' },
	{ value: 'Reinvestment Plan' },
	{ value: 'Savings Bank Deposits' },
	{ value: 'NRI' },
	{ value: 'NRE Savings Bank Ac' },
	{ value: 'NRE Fixed Deposits' },
	{ value: 'NRO Savings Bank Ac' },
	{ value: 'NRO Fixed Deposits' },
	{ value: 'Foreign Currency Non Resident Deposits FCNR' },
	{ value: 'Resident Foreign Currency' },
	{ value: 'Loans Against The Security Of NRE, NRO, FCNR' },
	{ value: 'Loan Schemes Interest Rates' },
	{ value: 'Home Loans Interest Rates' },
	{ value: 'Auto Loans' },
	{ value: 'Education Loan Scheme' },
	{ value: 'Personal Loans Schemes' },
	{ value: 'Loans against Securities' },
	{ value: 'Gold Loans' },
	{ value: 'Loans against Property' },
	{ value: 'SBI Career Loan' },
	{ value: 'Processing Fees' },
	{ value: 'Penal Interest and Other Charges' },
	{ value: 'Agricultural Segment' },
	{ value: 'SME Segment' },
	{ value: 'Old Interest Rates Last 10 Years' },
	{ value: 'Interest Rate For Borrowers Other Than P Segment' },
	{ value: 'Interest Rates On Pre Shipment Credit And Export Bill Discounting in Foreign Currency Loans' },
	{ value: 'Interest Rates On FCNB Loans To Exporters Corporates' },
	{ value: 'Base Rate, Historical Data' },
	{ value: 'Benchmark Prime Lending Rate, Historical Data' },
	{ value: 'Historical Data' },
	{ value: 'Loan Scheme' },
	{ value: 'Student Loan Scheme' },
	{ value: 'Scholar Loan Scheme' },
	{ value: 'Avail loan for Vocational, Skill Development Courses' },
	{ value: 'Interest Subsidy Scheme' },
	{ value: 'Repayment' },
	{ value: 'Request For Extension Of Moratorium Period' },
	{ value: 'Request For Extension Of Repayment Period' },
	{ value: 'MITC' },
	{ value: 'Contact Us' },
	{ value: 'Facebook' },
	{ value: 'Twitter' },
	{ value: 'Career with us' },
	{ value: 'SBI in the News' },
	{ value: 'Tender Awarded' },
	{ value: 'Procurement News' },
  ];
  
  // setup autocomplete function pulling from keyword[] array
  $('.autocomplete').autocomplete({
    lookup: keyword,
    onSelect: function (suggestion) {
     var thehtml = '  ' + suggestion.value + ' <br> <strong>Key word</strong> ' + suggestion.data;
      $('#outputcontent').html(thehtml);
    }
  });
  

});