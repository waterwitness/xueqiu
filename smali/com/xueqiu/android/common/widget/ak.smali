.class final Lcom/xueqiu/android/common/widget/ak;
.super Landroid/os/AsyncTask;
.source "ShareSheet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/aj;

.field private b:Lcom/xueqiu/android/common/widget/an;

.field private c:Lcom/xueqiu/android/common/widget/al;

.field private d:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/widget/aj;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/al;)V
    .locals 1

    .prologue
    .line 952
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ak;->a:Lcom/xueqiu/android/common/widget/aj;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->d:Landroid/app/Dialog;

    .line 953
    iput-object p2, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 954
    iput-object p3, p0, Lcom/xueqiu/android/common/widget/ak;->c:Lcom/xueqiu/android/common/widget/al;

    .line 955
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x43800000    # 256.0f

    .line 966
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 5043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 966
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 6043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 966
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 7043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 966
    if-nez v0, :cond_0

    .line 968
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 8043
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 968
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 969
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 9043
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 10043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 975
    if-nez v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 10075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 976
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 977
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 11043
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 12043
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 982
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-ge v0, v2, :cond_3

    .line 983
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 987
    :goto_1
    const v2, 0x8000

    if-lt v0, v2, :cond_2

    .line 990
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 991
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 995
    :goto_2
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ak;->b:Lcom/xueqiu/android/common/widget/an;

    .line 996
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    const/4 v4, 0x0

    .line 995
    invoke-static {v1, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 13043
    iput-object v0, v2, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 998
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 971
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 985
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_1

    .line 993
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/ak;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 946
    .line 14022
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14023
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14024
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->d:Landroid/app/Dialog;

    .line 14006
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->c:Lcom/xueqiu/android/common/widget/al;

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/al;->a()V

    .line 946
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 959
    .line 2010
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 2075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 2010
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 3075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 2010
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2011
    :cond_0
    :goto_0
    return-void

    .line 2013
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 2014
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2016
    :cond_2
    new-instance v0, Lcom/xueqiu/android/common/widget/ae;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ak;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 4075
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 2016
    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/widget/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->d:Landroid/app/Dialog;

    .line 2017
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ak;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
