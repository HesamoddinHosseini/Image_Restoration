
# Digital Image Processing (DIP),Image_Restoration, Min-Project 4

# English

Question)

Usually, in the imaging process, the image may be blurred for various reasons. Blur may be due to camera movement, object movement, defocus, atmospheric conditions or other factors. In MATLAB, there is a function called fspecial that models some of these functions. Studying the features of this command can better introduce the types of these functions.

a) motion blur:

1- The Im401 image is blurred with a linear blurring function k of unknown length x and the Im402 image is obtained. Estimate the blurring function using the Im401 image and calculating the reconstruction error.

2- If you do not have the Im401 image and only have the Im402 blurred image, you are faced with two unknowns: the blurring function and the original image. In fact, you are now faced with blind image deconvolution. In this case, what do you suggest to estimate the blur function k? Implement your suggestion and report the result.

B- Defocused blur

In each imaging system, a focal length is defined, and points of the scene that have different distances from the camera are defocused. The defocus blur function can be described by the pillbox function, which can be described by a single parameter of the blur radius.

1- Im403 and Im404 images are blurred Im401 with two defocus functions with different radii (consider the range of radii that can be checked from 2 to 8). Assume that the Im401 image is not available. Try to estimate blurring functions with the help of two existing images and then get the deblurred image.

Approaches that can be investigated:

o The principle of reconstruction of both images becomes a single image.

o The blur result of each image is almost equal to the blur function of the other image:

 <img width="609" alt="Screen Shot 2023-07-28 at 12 52 59 am" src="https://github.com/HesamoddinHosseini/Image_Restoration/assets/89314766/78bbb673-d085-4194-886c-dfea4974b1e8">

 The standard deviation of the noise added to the images is 0.001.

 o Check the method at your disposal.

 Note: In the above exercise, you can use the fspecial function first for convenience. But finally, you have to design a function named myFspecial that creates the blur functions designed in this exercise.
 

Abstract)

Usually, in the imaging process, the image may be blurred for various reasons. Blur may be due to camera movement, object movement, defocus, atmospheric conditions or other factors. Usually, the blur caused by the movement of the object during imaging is defined by two parameters: length and movement angle. If there is only the possibility of movement in the vertical or horizontal direction, the only parameter describing the movement is its size and direction. In each imaging system, a focal length is defined, and points of the scene that have different distances from the camera are defocused.
In the first stage of this mini-project, we will repair the image that is linearly blurred due to motion and get an estimate of its damaged function. We restore this operation once considering the original image and once assuming that we do not have the original image.
In the second stage of this mini project, we have images that are defocused. With the help of two existing images, we try to estimate the blurring functions and then obtain the deblurred image.
We use Matlab to implement this project.

Hesamoddin Hosseini


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
