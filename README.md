
# Image_Restoration, Min-Project 4

# English

Question)

1- Using an average 3 × 3 smoothing filter of Box Filter type, apply unsharp masking to the Im132 image.

2- Implement unsharp masking with Weighted Average of 3*3 average and compare the result with the previous result.

3-vRepeat the experience of part (1) with larger filters of 5 × 5, 7 × 7 and 9 × 9. What is the effect of enlarging the filter on the result? Discuss it.

4- What is the result if we use the median filter as a smoothing filter in unsharp masking?

5- 1/16 Consider the following stereotype as Laplacein stereotype:

<img width="135" alt="Screen Shot 2022-02-18 at 11 46 51 am" src="https://user-images.githubusercontent.com/89314766/154644646-49b48aef-526f-4e0d-bcd7-8bf87c3b64fc.png">

Using this cliché, the following relation can sharpen the image:

<img width="254" alt="Screen Shot 2022-02-18 at 11 47 15 am" src="https://user-images.githubusercontent.com/89314766/154644835-d7501f27-a0ea-45e9-9cf5-1d9fc2419ef2.png">

The above stereotype can be considered 1/16 of the total stereotypes

<img width="735" alt="Screen Shot 2022-02-18 at 11 50 56 am" src="https://user-images.githubusercontent.com/89314766/154645067-6372a3a3-4357-4ea4-9276-afe23e90f39f.png">

According to these clichés, an adaptive sharpening can be implemented in such a way that we apply all these clichés to any point of the source image and add the result of all filters that are larger than a threshold. Finally, we add the result to the main image.
Accordingly, apply the image sharpening in both non-horizontal and adaptive shapes to the images Im132 to Im134 and compare the result.

IM132:

![Im132](https://user-images.githubusercontent.com/89314766/154647298-5d1422cd-7c30-4edf-9084-1ad4d2384273.png)


IM133:

![Im133](https://user-images.githubusercontent.com/89314766/154647414-ab6cd126-2a13-4953-b35f-725c4d43161d.png)


IM134:

![Im134](https://user-images.githubusercontent.com/89314766/154647530-135474bb-56a1-48af-8c51-818e20eff75a.png)



Abstract)

In this mini-project, we will strengthen the edges for a number of gray images (grayscale) by using a suitable Box Filter. For this purpose, two unsharp masking algorithms and Laplacein have been used. In the unsharp masking algorithm, simple mean smoothing filter methods, weighted mean smoothing filter and medium filter with sizes such as 3 × 3, 5 × 5, 7 × 7 and 9*9*9 are used. In the Laplacein method, we try to sharpen the edges of three grayscale images in two ways: non-conformity with one stereotype and conformity with eight stereotypes. We use Matlab to implement this project.

# Persian:
سوال)

معمولاً در فرایند تصویربرداری، تصویر به دلایل مختلفی ممکن است تار شود. تاری ممکن است به دلیل حرکت دوربین، حرکت شیء، دیفوکوس، شرایط جوّی و یا عوامل دیگر باشد. در متلب، تابعی به نام fspecial  وجود دارد که برخی از این توابع را مدل می‌کند. مطالعه ویژگی‌های این دستور می‌تواند انواع این توابع را بهتر معرفی نماید
.
الف) تاری حرکت:

معمولاً تاری ناشی از حرکت شیء در حین تصویربرداری با دو پارامتر طول و زاویه حرکت تعریف می‌شود. چنانچه فقط احتمال حرکت در جهت عمودی و یا افقی وجود داشته باشد، تنها پارامتر توصیف کننده حرکت، اندازه و جهت آن است.

1- تصویر Im401 با یک تابع تاری خطی k به طول مجهول x تار شده است و تصویر Im402 بدست آمده است. به کمک تصویر Im401 و محاسبه خطای بازسازی، تابع تاری را تخمین بزنید

2- چنانچه تصویر Im401 را نداشته باشید و تنها تصویر تار Im402 را در اختیار داشته باشید، با دو مجهول تابع تاری و تصویر اولیه مواجه هستید. در واقع، حالا با blind image deconvolution مواجه هستید. در این حالت، چه پیشنهادی برای تخمین تابع تاری k دارید. پیشنهاد خود را پیاده سازی و نتیجه را گزارش نمایید.

ب- تاری دیفوکوس

در هر سیستم تصویربرداری، یک فاصله کانونی تعریف می‌شود و نقاطی از صحنه که فاصله متفاوتی تا دوربین دارند، دچار تاری دیفوکوس می‌شوند. تابع تاری دیفوکوس را می‌توان با تابع pillbox توصیف نمود که با تک پارامتر شعاع تاری قابل توصیف است.
.

	
 رویکردهای قابل بررسی:
	 
  اصل بازسازی هردو تصویر، یک تصویر واحد می‌شود.
	
 حاصل تاری هر تصویر با تابع تاری تصویر دیگر با هم تقریباً برابر است:

 <img width="609" alt="Screen Shot 2023-07-28 at 12 52 59 am" src="https://github.com/HesamoddinHosseini/Image_Restoration/assets/89314766/78bbb673-d085-4194-886c-dfea4974b1e8">


انحراف معیار نویز اضافه شده به تصاویر 0.001 است.

 روشی را به اختیار بررسی نمایید.

نکته: در تمرین فوق، می‌توانید ابتدا برای راحتی کار از تابع fspecial  استفاده کنید. اما در نهایت باید تابعی به نام myFspecial طراحی نمایید که توابع تاری طرح شده در این تمرین را ایجاد نماید.


خلاصه)

معمولاً در فرایند تصویربرداری، تصویر به دلایل مختلفی ممکن است تار شود. تاری ممکن است به دلیل حرکت دوربین، حرکت شیء، دیفوکوس، شرایط جوّی و یا عوامل دیگر باشد. معمولاً تاری ناشی از حرکت شیء در حین تصویربرداری با دو پارامتر طول و زاویه حرکت تعریف می‌شود. چنانچه فقط احتمال حرکت در جهت عمودی و یا افقی وجود داشته باشد، تنها پارامتر توصیف کننده حرکت، اندازه و جهت آن است. در هر سیستم تصویربرداری، یک فاصله کانونی تعریف می‌شود و نقاطی از صحنه که فاصله متفاوتی تا دوربین دارند، دچار تاری دیفوکوس می‌شوند. 
بناست در مرحله اول این مینی پروژه، تصویری را که به علت حرکت، به صورت خطی تاره شده است را ترمیم نموده و تخمینی از تابع خراب آن بدست آوریم. این عمل را یک بار با در نظر گرفتن تصویر اصلی و یک بار با فرض اینکه تصویر اصلی را نداریم، ترمیم می کنیم.
در مرحله دوم این مینی پروژه، تصاویری داریم که دچار تاری دی فوکوس شده اند. به کمک دو تصویر موجود تلاش می کنیم توابع تاری را تخمین بزنیم و سپس تصویر رفع تارشده را بدست آوریم.
برای پیاده سازی این پروژه از Matlab استفاده می نماییم.



Hesamoddin Hosseini
