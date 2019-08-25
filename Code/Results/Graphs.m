p = plot(percentSmaller, AnanthP, percentSmaller, Ricardo, percentSmaller, YerkoL);
p(1).LineWidth = 2;
p(2).LineWidth = 2;
p(3).LineWidth = 2;
grid
legend('Ananth Pai', 'Ricardo', 'Yerko Lucic')
xlabel('% Smaller');
ylabel('Compression Ratio')
title('Compression Ratio of High Contrast Images at Different Sizes with an Error Probability of 10%')

%% avg comp ratio

pattern = [1.3878 1.1920 1.4186];
landscape = [1.5218 1.1890 2.3152];
highContrast = [2.5339 1.8100 1.9867];

x = categorical({'Texture/Pattern','Landscape','High Contrast'});
y = [pattern; landscape; highContrast];
bar(x, y)
xlabel('Image Types')
ylabel('Compression Ratio')
title('Compression Ratio for Different Image Types with an Error Probability of 0%')

%% psnr texture

errorProb = [0; 20; 40; 60; 80; 100];

figure
p = plot(errorProb, PSNRbitHolesText, 'r-', errorProb, PSNRoneHolesText, 'r--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
hold on
p = plot(errorProb, PSNRbitDCTText, 'b-', errorProb, PSNRoneDCTText, 'b--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
p = plot(errorProb, PSNRbitComboText, 'g-', errorProb, PSNRoneComboText, 'g--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
legend('Holes: Bit Flip', 'Holes: Ones Compliment', 'DCT: Bit Flip', 'DCT: Ones Compliment', 'Holes+DCT: Bit Flip', 'Holes+DCT: Ones Compliment');
grid
xlabel('Error Probability (% Chance of occuring)')
ylabel('PSNR (dB)')
title('Peak Signal-to-Noise Ratio for Texture/Pattern Images with Increasing Error Probability')


%% mse texture

figure
p = plot(errorProb, MSEbitHolesText, 'r-', errorProb, MSEoneHolesText, 'r--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
hold on
p = plot(errorProb, MSEbitDCTText, 'b-', errorProb, MSEoneDCTText, 'b--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
p = plot(errorProb, MSEbitComboText, 'g-', errorProb, MSEoneComboText, 'g--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
legend('Holes: Bit Flip', 'Holes: Ones Compliment', 'DCT: Bit Flip', 'DCT: Ones Compliment', 'Holes+DCT: Bit Flip', 'Holes+DCT: Ones Compliment');
grid
xlabel('Error Probability (% Chance of occuring)')
ylabel('MSE')
title('Mean-Squared Error for Texture/Pattern Images with Increasing Error Probability')

%% psnr land

figure
p = plot(errorProb, PSNRbitHolesLand, 'r-', errorProb, PSNRoneHolesLand, 'r--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
hold on
p = plot(errorProb, PSNRbitDCTLand, 'b-', errorProb, PSNRoneDCTLand, 'b--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
p = plot(errorProb, PSNRbitComboLand, 'g-', errorProb, PSNRoneComboLand, 'g--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
legend('Holes: Bit Flip', 'Holes: Ones Compliment', 'DCT: Bit Flip', 'DCT: Ones Compliment', 'Holes+DCT: Bit Flip', 'Holes+DCT: Ones Compliment');
grid
xlabel('Error Probability (% Chance of occuring)')
ylabel('PSNR (dB)')
title('Peak Signal-to-Noise Ratio for Landscape Images with Increasing Error Probability')


%% mse land

figure
p = plot(errorProb, MSEbitHolesLand, 'r-', errorProb, MSEoneHolesLand, 'r--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
hold on
p = plot(errorProb, MSEbitDCTLand, 'b-', errorProb, MSEoneDCTLand, 'b--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
p = plot(errorProb, MSEbitComboLand, 'g-', errorProb, MSEoneComboLand, 'g--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
legend('Holes: Bit Flip', 'Holes: Ones Compliment', 'DCT: Bit Flip', 'DCT: Ones Compliment', 'Holes+DCT: Bit Flip', 'Holes+DCT: Ones Compliment');
grid
xlabel('Error Probability (% Chance of occuring)')
ylabel('MSE')
title('Mean-Squared Error for Landscape Images with Increasing Error Probability')

%% psnr high

figure
p = plot(errorProb, PSNRbitHolesHC, 'r-', errorProb, PSNRoneHolesHC, 'r--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
hold on
p = plot(errorProb, PSNRbitDCTHC, 'b-', errorProb, PSNRoneDCTHC, 'b--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
p = plot(errorProb, PSNRbitComboHC, 'g-', errorProb, PSNRoneComboHC, 'g--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
legend('Holes: Bit Flip', 'Holes: Ones Compliment', 'DCT: Bit Flip', 'DCT: Ones Compliment', 'Holes+DCT: Bit Flip', 'Holes+DCT: Ones Compliment');
grid
xlabel('Error Probability (% Chance of occuring)')
ylabel('PSNR (dB)')
title('Peak Signal-to-Noise Ratio for High Contrast Images with Increasing Error Probability')


%% mse high

figure
p = plot(errorProb, MSEbitHolesHC, 'r-', errorProb, MSEoneHolesHC, 'r--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
hold on
p = plot(errorProb, MSEbitDCTHC, 'b-', errorProb, MSEoneDCTHC, 'b--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
p = plot(errorProb, MSEbitComboHC, 'g-', errorProb, MSEoneComboHC, 'g--');
p(1).LineWidth = 2;
p(2).LineWidth = 2;
legend('Holes: Bit Flip', 'Holes: Ones Compliment', 'DCT: Bit Flip', 'DCT: Ones Compliment', 'Holes+DCT: Bit Flip', 'Holes+DCT: Ones Compliment');
grid
xlabel('Error Probability (% Chance of occuring)')
ylabel('MSE')
title('Mean-Squared Error for High Contrast Images with Increasing Error Probability')