%% KWDIKAS GIA TO ERWTHMA 2 (b') (i)
function [T] = function2bi()
 T =[
   2*pi^2,
 - 2*pi,
 - (4*pi^3)/3,      % gia na ypologisw to anaptygma ths seiras taylos "etreksa" mia mia me th 
 + (2*pi^4)/3,       % seira tis parakatw entoles:
 - (4*pi^5)/15,       % "syms x" orizw to x ws metavlhth
 + (4*pi^6)/45,        % "f(x) = (taylor(exp(x), x, 0, 'Order', 64));" dhmiourgw thn seira taylor 
 - (8*pi^7)/315,        % ws synarthsh gia thn e^x gia tous prwtous 64 orous
 + (2*pi^8)/315,         % "f(-2*pi)" ypologizw to anaptygma gia x = -2*pi
 - (4*pi^9)/2835,
 + (4*pi^10)/14175,
 - (8*pi^11)/155925,
 + (4*pi^12)/467775,
 - (8*pi^13)/6081075,
 + (8*pi^14)/42567525,
 - (16*pi^15)/638512875,
 + (2*pi^16)/638512875,
 - (4*pi^17)/10854718875,
 + (4*pi^18)/97692469875,
 - (8*pi^19)/1856156927625,
 + (4*pi^20)/9280784638125,
 - (8*pi^21)/194896477400625,
 + (8*pi^22)/2143861251406875,
 - (16*pi^23)/49308808782358125,
 + (4*pi^24)/147926426347074375,
 - (8*pi^25)/3698160658676859375,
 + (8*pi^26)/48076088562799171875,
 - (16*pi^27)/1298054391195577640625,
 + (8*pi^28)/9086380738369043484375,
 - (16*pi^29)/263505041412702261046875,
 + (16*pi^30)/3952575621190533915703125,
 - (32*pi^31)/122529844256906551386796875,
 + (2*pi^32)/122529844256906551386796875,
 - (4*pi^33)/4043484860477916195764296875,
 + (4*pi^34)/68739242628124575327993046875,
 - (8*pi^35)/2405873491984360136479756640625,
 + (4*pi^36)/21652861427859241228317809765625,
 - (8*pi^37)/801155872830791925447758961328125,
 + (8*pi^38)/15221961583785046583507420265234375,
 - (16*pi^39)/593656501767616816756789390344140625,
 + (4*pi^40)/2968282508838084083783946951720703125,
 - (8*pi^41)/121699582862361447435141825020548828125,
 + (8*pi^42)/2555691240109590396137978325431525390625,
 - (16*pi^43)/109894723324712387033933067993555591796875,
 + (8*pi^44)/1208841956571836257373263747929111509765625,
 - (16*pi^45)/54397888045732631581796868656810017939453125,
 + (16*pi^46)/1251151425051850526381327979106630412607421875,
 - (32*pi^47)/58804116977436974739922415018011629392548828125,
 + (4*pi^48)/176412350932310924219767245054034888177646484375,
 - (8*pi^49)/8644205195683235286768595007647709520704677734375,
 + (8*pi^50)/216105129892080882169214875191192738017616943359375,
 - (16*pi^51)/11021361624496124990629958634750829638898464111328125,
 + (8*pi^52)/143277701118449624878189462251760785305680033447265625,
 - (16*pi^53)/7593718159277830118544041499343321621201041772705078125,
 + (16*pi^54)/205030390300501413200689120482269683772428127863037109375,
 - (32*pi^55)/11276671466527577726037901626524832607483547032467041015625,
 + (8*pi^56)/78936700265693044082265311385673828252384829227269287109375,
 - (16*pi^57)/4499391915144503512689122748983408210385935265954349365234375,
 + (16*pi^58)/130482365539190601867984559720518838101192122712676131591796875,
 - (32*pi^59)/7698459566812245510211089023510611447970335240047891763916015625,
 + (16*pi^60)/115476893502183682653166335352659171719555028600718376458740234375,
 - (32*pi^61)/7044090503633204641843146456512209474892856744643820963983154296875,
 + (32*pi^62)/218366805612629343897137540151878493721678559083958449883477783203125,
 - (64*pi^63)/13757108753595648665519665029568345104465749222289382342659100341796875,
 + 1];
end